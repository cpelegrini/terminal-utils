# Example: 
#    ./change-remote-url.sh ~/Projects/_git/node-api git@ssh.dev.azure.com:v3/user/node-api/

path=$1
newUrl=$2

cd $path
repository=$(basename `git config --get remote.origin.url`)
# echo "git remote set-url origin ${newUrl}${repository}"
git remote set-url origin $newUrl$repository
