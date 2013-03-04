#!/bin/bash

echo 'Compiling assets...'
rake assets:precompile

echo 'Pushing to heroku...'
git add .
git add -u
git commit -m 'Compiles assets'
git push heroku master

echo 'Removing assets...'
rm -rf 'public/assets'

echo 'Pushing to github...'
git add .
git add -u
git commit -m 'Removes assets after deploy'
git push origin master