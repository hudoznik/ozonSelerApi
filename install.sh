#!/bin/bash

# npx license "MIT"
# npx gitignore node
# npx covgen

npm set init.name "Ozon Seller API"
npm set init.description "Получение инфармации из Ozon по API."
npm set init.author.name "Шелудченков Алексадр"
npm set init.author.email "hudoznik-1@ya.ru"
npm set init.author.url "https://career.habr.com/hudoznik"
npm set init.license "MIT"
npm set init.version "1.0.0"

# npm init -y

git config --global user.email "hudoznik-1@ya.ru"
git config --global user.name "hudoznik"
echo "# ozonSelerApi" >> README.md
git init

npx license $(npm get init.license) -o "$(npm get init.author.name)" > LICENSE
npx gitignore node
npx covgen "$(npm get init.author.email)"
npm init -y
git add -A
git commit -m "Initial commit"

git branch -M main
git remote add origin git@github.com:hudoznik/ozonSelerApi.git
git push -u origin main



# git remote add ozonSelerApi ssh://hudoznik@github.com/hudoznik/ozonSelerApi/repo.git
# git push --set-upstream ozonSelerApi master