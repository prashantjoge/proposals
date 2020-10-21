# proposals
Git global setup
git config --global user.name "Prashant thomas"
git config --global user.email "prashant.thomas@verbat.com"

Create a new repository
git clone https://gitlab.com/prashant.thomas/proposal.git
cd proposal
touch README.md
git add README.md
git commit -m "add README"
git push -u origin master

Push an existing folder
cd existing_folder
git init
git remote add origin https://gitlab.com/prashant.thomas/proposal.git
git add .
git commit -m "Initial commit"
git push -u origin master

Push an existing Git repository
cd existing_repo
git remote rename origin old-origin
git remote add origin https://gitlab.com/prashant.thomas/proposal.git
git push -u origin --all
git push -u origin --tags
