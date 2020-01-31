#!/bin/bash
function create () {
    git_token=<Github Personal access token>
    git_username=<Github username>
    project=$1
    path=<Path to projects directory>
    echo Creating new project $project.
    mkdir /$path/$project/
    echo Moving to $project.
    cd /$path/$project
    echo Creating new github repo named $project.
    curl --output /dev/null -is -H "Authorization: token "$git_token"" -d '{"name": "'"$project"'", "auto_init": false, "private": false}' https://api.github.com/user/repos
    git init &> /dev/null
    echo Repository initialised.
    git remote add origin git@github.com:$git_username/$project.git &> /dev/null
    touch README.md
    git add . &> /dev/null
    git commit -m "Initial commit" &> /dev/null
    echo First commit done.
    git push -u origin master &> /dev/null
    echo First push to github done.
}



