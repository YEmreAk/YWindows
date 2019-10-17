python ../YGitBookIntegration/integrate.py . -ll 1 -l ../YWiki/5\ -\ İşletim\ Sistemi\ Notları/1\ -\ Windows\ 10/README.md -u https://windows.yemreak.com
echo "---
description: Sitede neler olup bittiğinin raporudur.
---" > CHANGELOG.md
ygitchangelog -d >> CHANGELOG.md
bash github
