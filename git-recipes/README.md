The following document contains annotations on git usage.

Setting up the environment
==========================
Do not forget to...

     git config --global user.name "User"
     git config --global user.email "email@email.com"

Ugly hack to disable SSL verification in friendly environments:

	git config --global http.sslVerify false

A better git log through `git lg`

	# Booooh... unreadable
     git log
     
	# Nice: 
     git config alias.lg "log --oneline --graph --decorate"
     git lg

	# Or even nicer (https://coderwall.com/p/euwpig):
	git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

	# Add --all to see all branches when necessary (or add in the alias)
	git lg --all
	

Please push **always** passing the branch name. You don't want to send all the bullshit.

	git push origin master

Basic operation.
================
 What has changed? Summary

	git status

Show changes in the working directory

	git diff

Show changes in the index (staged)

	git diff --cached

Show changes in ...

	# the last commit
	git show HEAD
	# specific branch
	git show master
	# specific version
	git show abc123
	# Previous commit
	git show HEAD~
	# 3 commits ago
	git show HEAD~3

Ready for commit? Staging changes
=================================
Add pieces of the modified file (`README.md`) to the index

	# Interactive (now you won't go back to SVN uh?)
	git add README.md -p

	# Everything in the file
	git add README.md

Remove from the index a specific file (and leave as it was)

	git reset README.md

Save work for later (`stash`)
=============================
Save changes in the stash stack, over modified files not in index:

	git stash
	# With a specific message
	git stash save "Desired message here"

Recover it

	git stash pop

List of saved stashes
	
	git stash list

Recover a specific stash:

	git stash apply stash@{1}


Reverting changes
=================

Revert last commit and commit it

	git revert HEAD

	# revert antoher commit
	git revert abc123

Revert last commit but instead of commiting leave the changes in the index for review:

	git revert HEAD -n

Fixing last commit (For God's sake, don't do it if you already pushed to a remote last commit)

	git commit --amend

Destroying changes
===============
Remove/discard changes in the working directory (ignores staged changes)

	# All changes:
	git checkout .

	# A specific file or folder:
	git checkout README.md
	
Remove changes from the index **AND** the working directory

	git checkout HEAD README.md

Destroy all commits up to a specific hash

	# Leaving changes in the index	
	git reset YOURHASH

	# Destroy forever and goodbye my love:
	git reset YOURHASH --hard
	
	# Destroy last commit (but leave changes uncommitted):
	git reset --soft HEAD^

But there is always hope... and you didn't lose forever

	# Browse the log history
	git reflog

	# Locate where you messed it up and if necessary git reset again :)
	git reset HASH_THIS_NEVER_HAPPENED

Branching
=========
Show current branch, either:

	git branch
	git status

Show all branches (including remotes)

	git branch -a

Create branch from current branch

	git branch my-new-feature
	git checkout my-new-feature
	
	# Or all in one operation:
	git checkout -b my-new-feature

Delete a branch

	git branch -d branch-name
	
	# From the remote (if origin). Note the colon ":"
	git push origin :branch-name


## The fast-forward concept

Now merge a branch (example merging `my-new-feature` into `master` branch). This is by default a fast-forward operation meaning that you cannot see where the modification comes from, because git only changes the pointer only. The fast forward results when the merge of the branches results in the same content (and hash).

	git checkout master # or whatever branch you want to merge into
	git merge my-new-feature

If you want to create a new hash (and object) in the merge operation (and you can follow where it comes from) use no fastforward:

	git merge my-new-feature --no-ff

Resolving conflicts on merge
============================
Manual resolution:

	# ----- Looks like ---
	# Auto-merging my-new-feature
	# CONFLICT (content): Merge conflict in myfile.txt
	# Automatic merge failed; fix conflicts and then commit the result.
	# ----

	# Now edit the file by hand and when you have finished:
	git add myfile.txt
	git commit

Or if you want the whole file from a specific branch instead of mergin them you can:

	# this will copy the myfile.txt from the branch you pass:		
	git checkout desired-branch -- myfile.txt
	
	# Or take it from where the HEAD is:
	git checkout HEAD -- myfile.txt

	# And commit
	git add myfile.txt
	git commit -m "Whatever"

At any time if you want to abort the merge operation

	git merge --abort


## Rebase

*Re-*base changes the "starting point" (base) from where your branch was originated. So, suddenly your code has a different mother, but without the paperwork.

When you merge a branch using rebase the following procedure is followed:

- Git goes back in the history of your branch to find the starting point (the moment you created it)
- Collects all the commits you have done since that moment.
- Puts your branch in the state of the requested branch
- Applies one by one all commits you did before at once (like if it were a patch)

To do it:

	git checkout your-branch
	git rebase master

Rebase should be used only in your own unpublished branches.
