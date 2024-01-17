Step 1: Download and Install Git-lfs ( Git Large File Storage(more than 100MB) ) from here.
Linux(ubuntu)

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash

sudo apt-get install git-lfs

Step 2: Setup Git lfs for your user account git lfs install.

Step 3: If you have already tried to commit large files and got the error then you must first undo the commit, use git reset — soft HEAD~1 otherwise ignore this step.

Step 4: Select the file types that you want Git-lfs to manage using the command git lfs track “*.fileExtension” , this creates a .gitattributes file.

Step 5: Add the .gitattributes file along with other files which need to be committed and push the changes.

git init
git lfs track terraform.tf
git add .gitattributes terraform.tf
git commit -m "Adding tf using lfs"
git branch -M main
git push origin main
