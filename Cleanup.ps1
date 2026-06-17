$cachePath = "$env:windir\ccmcache"
 
if (Test-Path $cachePath) {
    Write-Host "Cleaning CCM Cache (skipping restricted files)..."
 
    Get-ChildItem $cachePath -Recurse -Force -ErrorAction SilentlyContinue | ForEach-Object {
        try {
            Remove-Item $_.FullName -Force -Recurse -ErrorAction Stop
            Write-Host "Deleted: $($_.FullName)"
        }
        catch {
            Write-Host "Skipped (no permission): $($_.FullName)"
        }
    }
 
    Write-Host "Cleanup completed (partial if permissions restricted)."
} else {
    Write-Host "CCM Cache folder not found."
}
 
Read-Host "Press Enter to exit"
