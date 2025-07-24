# auto_git_commit.ps1
$repoPath = "C:\xampp\htdocs\mysite\gemini_myproject"
$commitMessage = "Automated commit" # 기본 커밋 메시지

# 리포지토리 경로로 이동
Set-Location $repoPath

# 변경 사항이 있는지 확인
$status = git status --porcelain
if ($status) {
    Write-Host "Changes detected in $repoPath. Committing..."
    git add .
    git commit -m "$commitMessage"
    git push origin main
    Write-Host "Commit and push completed."
} else {
    Write-Host "No changes detected in $repoPath."
}