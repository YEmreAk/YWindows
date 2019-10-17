python ../YGitBookIntegration/integrate.py . -ll 1 -l ../YWiki/İşletim\ Sistemi\ Notları/Windows\ 10/README.md -u https://windows.yemreak.com
echo "---
description: Sitede neler olup bittiğinin raporudur.
---" > CHANGELOG.md
ygitchangelog -d >> CHANGELOG.md
bash github
