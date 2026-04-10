#!/bin/bash
# Run this script as: bash /opt/.openclaw-soc/do-all-commits.sh
set -e

COAUTHOR="Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>"

echo "===== 1/5: BSC ====="
cd /opt/.openclaw-bsc
git add -A
git commit -m "sync: DeepSeek model config, anti-thinking SOUL rules for orders subagent

$COAUTHOR"
git push origin main
echo "BSC: DONE"

echo ""
echo "===== 2/5: GDA ====="
cd /opt/.openclaw-gda
git rm -r --cached . > /dev/null 2>&1 || true
git add -A
git commit -m "sync: server state - model config, workspace updates, add .gitignore

$COAUTHOR"
git push origin main
echo "GDA: DONE"

echo ""
echo "===== 3/5: HOS ====="
cd /opt/.openclaw-hos
git rm -r --cached . > /dev/null 2>&1 || true
git add -A
git commit -m "sync: server state - model config, workspace updates, add .gitignore

$COAUTHOR"
git push origin main
echo "HOS: DONE"

echo ""
echo "===== 4/5: SOC ====="
cd /opt/.openclaw-soc
git rm -r --cached . > /dev/null 2>&1 || true
git add -A
git commit -m "sync: server state - model config, workspace updates, add .gitignore

$COAUTHOR"
git push origin main
echo "SOC: DONE"

echo ""
echo "===== 5/5: BIZ ====="
cd /opt/.openclaw-biz
git rm -r --cached . > /dev/null 2>&1 || true
git add -A
git commit -m "sync: server state - model config, workspace updates, add .gitignore

$COAUTHOR"
git push origin main
echo "BIZ: DONE"

echo ""
echo "===== ALL 5 REPOS COMMITTED AND PUSHED ====="
