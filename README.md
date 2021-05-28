# Deploy batch
Batch file to make easier to deploy changes from a repository to another

This batch process will read 3 variables from the deploy.ini file:
1. DEPLOY-FROM: This is the route to the repository wich has the changes you want to take
2. DEPLOY-TO: This is the route to the repository where you want to place the changes
3. BRANCH: This is the branch to use in both cases

I created this file to automate the process to take changes from the production branch in the developer repository to the production repository using a scheduled Winodws task.

It also will create a log file (and the logs folder if neccesary) named with the current date using the following format "YYY-MM-DD_deploy.log"
