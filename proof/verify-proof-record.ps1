<#
  verify-proof-record.ps1
  Verifies deliberon-proof-record.json: a signed Deliberon council run.

  It checks two things, with no trust in this script or in Deliberon:
    1. Each seat's response carries a valid ECDSA P-256 / SHA-256 signature
       made by that seat's own public key.
    2. The responses form an unbroken SHA-256 hash chain, so no response
       could be reordered, added, or removed without detection.

  Signed payload per response (UTF-8), exactly:
    {sessionId}|{round}|{agentId}|{provider}|{apiEndpoint}|{prevHash}|{text}
  prevHash = base64( SHA-256( previous response text ) ), empty for the first.

  The operator's original prompt is withheld from this public copy (it named
  competitors). The prompt is NOT part of the signed payload above, so every
  signature below verifies whether the prompt is present or not.

  Run:  pwsh -File verify-proof-record.ps1
#>
$ErrorActionPreference = 'Stop'
$path = Join-Path $PSScriptRoot 'deliberon-proof-record.json'
$json = Get-Content -Raw -LiteralPath $path | ConvertFrom-Json

$seats = @{}
foreach ($s in $json.seats) { $seats[$s.agentId] = $s }

$sha = [System.Security.Cryptography.SHA256]::Create()
$allOk = $true
$prevText = $null

foreach ($round in $json.rounds) {
  foreach ($r in $round.responses) {
    $seat = $seats[$r.seat]
    $payload = "$($json.sessionId)|$($round.round)|$($r.seat)|$($r.provider)|$($seat.apiEndpoint)|$($r.prevHash)|$($r.text)"
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($payload)

    $ec = [System.Security.Cryptography.ECDsa]::Create()
    $br = 0
    $ec.ImportSubjectPublicKeyInfo([System.Convert]::FromBase64String($seat.publicKey), [ref]$br)
    $sig = [System.Convert]::FromBase64String($r.signature)
    # ECDsa 3-arg VerifyData expects IEEE P1363 (r||s) signatures, which is what Deliberon emits.
    $sigOk = $ec.VerifyData($bytes, $sig, [System.Security.Cryptography.HashAlgorithmName]::SHA256)

    if ($null -eq $prevText) { $chainOk = ($r.prevHash -eq "") }
    else {
      $h = [System.Convert]::ToBase64String($sha.ComputeHash([System.Text.Encoding]::UTF8.GetBytes($prevText)))
      $chainOk = ($h -eq $r.prevHash)
    }

    "{0,-10} [{1,-26}] signature={2,-5}  hash-chain={3}" -f $r.provider, $r.seat, $sigOk, $chainOk
    if (-not $sigOk -or -not $chainOk) { $allOk = $false }
    $prevText = $r.text
  }
}
"----"
if ($allOk) { "ALL SIGNATURES + HASH CHAIN VALID" }
else { "VERIFICATION FAILED"; exit 1 }
