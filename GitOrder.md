# Git Command Order

1. git stash (If there are changes on your side)
2. git checkout master
3. git pull (To get all the latest commits from the main branch)
4. git checkout [your branch]
5. git stash pop (To pull all the changes you made back from stashing)
6. git rebase master (To make sure all the commits aligned)
7. git add . (To stage all the changes)
8. git commit -m "[your commit message]"
9. git push

## Try to avoid pushing instantly without stashing/rebasing
