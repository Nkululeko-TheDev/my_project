#!/bin/bash
git --version

    if [ -d "Project" ]; then
        echo "Folder 'Project' exists."
	rm -rf Project
    else
        echo "Folder 'Project' does not exist."
    fi

mkdir Project
cd Project
touch README.md
echo "Ola bafethu" >README.md
cat README.md

git init

git add README.md

git commit -m "Save changes to readme file"

read -p "Provide the GitHub link to connect to your remote environment:" link
echo "GitHub link is $link."

git remote add origin $link

git push origin main











