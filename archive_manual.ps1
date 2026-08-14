$ErrorActionPreference = 'Stop'

$commitMessage = "Archive update $([DateTime]::UtcNow.ToString('yyyy-MM-ddTHH:mm:ssZ')) (manually)"

git add -A
git commit -m $commitMessage
git push origin
