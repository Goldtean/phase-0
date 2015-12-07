How does tracking and adding changes make developers' lives easier?
	* It makes developers' lives easier by letting them track changes and gives them the ability to go back to a working version of code.
What is a commit?
	* A commit is kind of like a save point in a video game.
What are the best practices for commit messages?
	* Best practices are to keep messages short with a quick broad description for what was changed.
What does the HEAD^ argument mean?
	* The HEAD^ argument is for navigating to different commits. The git reset HEAD command is for unstaging files that are staged for commit.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
	* The first stage is to pull from master to make sure you're up to date, the second stage is to checkout a new branch, and the third is to commit changes to it.
Write a handy cheatsheet of the commands you need to commit your changes?
	* To commit changes you need the following commands:
	git status 						- checks the status of the git
	git checkout -b newbranch 		- creates newbranch as a new branch
	git branch 						- checks which branch you're on
	git add 						- primes files for commit
	git commit 						- commits changes
	git branch -d newbranch 		- deletes the branch
	git merge master				- merges changes from the master 										branch
	git push origin					- pushes new branch to github

What is a pull request and how do you create and merge one?
	* A pull request merges the code to the master branch.
Why are pull requests preferred when working with teams?
	* I believe it's because merging of the two is better than pushing directly to the master because you can un-do it easier. Honestly though, I'm not super sure why I am just going with the flow. This is one of those times, I think, where you power through not knowing exactly why you're doing it the way you are and later you will understand.

