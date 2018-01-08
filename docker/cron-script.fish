#! /usr/bin/fish

# This script is used to deploy and update
# the running Docker containers
# This script should be run daily in crontab
# sudo crontab -e    ->    0 0 * * * [PATH_TO_SCRIPT] [BRANCH] >> [LOGFILE_PATH]

set GIT_BRANCH $argv[1]
set WORKING_DIRECTORY /tmp/update-$GIT_BRANCH

echo "creating tmp working directory at $WORKING_DIRECTORY"
mkdir $WORKING_DIRECTORY
cd $WORKING_DIRECTORY

echo "cloning git repo on branch: $GIT_BRANCH"
git clone https://github.com/Kleinendorst/blog-depot.git
cd blog-depot/
git checkout -b $GIT_BRANCH --track remotes/origin/$GIT_BRANCH

echo "run docker-compose pull & docker-compose up"
cd docker/$GIT_BRANCH
docker-compose pull & docker-compose up -d

echo "removing tmp working directory at $WORKING_DIRECTORY"
rm -rf $WORKING_DIRECTORY
