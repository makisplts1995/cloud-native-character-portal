while($true) { 
  $key = docker exec budibase-redis redis-cli --raw KEYS "logs:ro_ta_users_us_*" | Select-Object -First 1
  Clear-Host
  if ($key) {
      Write-Host "--- LIVE ACTIVITY LOGS ($key) ---" -ForegroundColor Cyan
      docker exec budibase-redis redis-cli --raw LRANGE $key 0 -1
  } else {
      Write-Host "Waiting for logs... (Perform an action in Budibase)" -ForegroundColor Yellow
  }
  Start-Sleep -Seconds 2 
}
