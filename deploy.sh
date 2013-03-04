#!/bin/bash

echo 'Compiling assets...'
echo '==================='
rake assets:precompile

echo 'Pushing to heroku...'
echo '==================='
git add .
git add -u
git commit -m 'Compiles assets'
git push heroku master

echo 'Removing assets...'
echo '==================='
rm -rf 'public/assets'

echo 'Pushing to github...'
echo '==================='
git add .
git add -u
git commit -m 'Removes assets after deploy'
git push origin master

echo 'Success!'
echo '==================='