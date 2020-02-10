# Git

This page details the global git configuration that will be applied.

## Log Format

This is the default log format when you run `git log`.

```
commit d955009d748329cc0d42b10248fba6358502d451 (HEAD -> revamp-complete-project)
Author: Ricardo Costa <email>
Date:   Wed Sep 19 23:35:07 2018 +0100

  Revamp complete project

commit dcb16ff2c0ead5c0520cbff683de4d00d5d48ec3 (origin/master, origin/HEAD, master)
Author: Ricardo Costa <email>
Date:   Sun Jan 8 12:48:44 2017 +0000

  Add git configuration

commit 6fdaf450db1b27f99767f62a6c2cd00994f5356d
Author: Ricardo Costa <email>
Date:   Sun Jan 8 12:43:23 2017 +0000

  Add backspace settings to vim

commit a416ef25412460fced2de7e60486f15a8de64285
Author: Ricardo Costa <email>
Date:   Sun Jan 8 12:15:19 2017 +0000

  Change relative path extension for VSCode
```

It tells you stuff you don't need to know, it doesn't tell stuff you'd like to know and, above all, it takes a lot of space.

I prefer the following:

```
d955009 G 2018-09-19 23:35:07 +0100 Ricardo Costa   Revamp complete project  HEAD -> revamp-complete-project
dcb16ff N 2017-01-08 12:48:44 +0000 Ricardo Costa   Add git configuration  origin/master, origin/HEAD, master
6fdaf45 N 2017-01-08 12:43:23 +0000 Ricardo Costa   Add backspace settings to vim
a416ef2 N 2017-01-08 12:15:19 +0000 Ricardo Costa   Change relative path extension for VSCode
```

Several things going on here:

**Commit hash**

I don't need the full hash to reference a commit when using `git show` or `git commit --fixup`. The shorter hash is enough for my needs.

**Signed commit**

When you develop alone you may not needed, but it's always good to know the commit has been signed with a GPG key. You can then use `git verify-commit <hash>` to make sure you're ok with that commit. Notice the differences:

```
$ git verify-commit d955009
gpg: Signature made Wed Sep 19 23:35:18 2018 WEST
gpg:                using RSA key 92C58E5082B7D5FC0696F67C1BCFF2868D95F88E
gpg: Good signature from "Ricardo Costa (Github/GitLab) <email>" [ultimate]

$ git verify-commit dcb16ff
# nothing
```

**Date format**

I don't really need to know if the commit was done on a Wednesday. It's much easier to process a consistent format with all the same spacing.

**Author**

It's good to know who was the commit's author, but do you really need to know the author's email? For me, the name is enough.

**Commit Message**

The default format takes a lot of space just for the commit title. It's supposed to be a one-liner, so we might as well treat it like that.

**Branch Information**

My workflow involves developing on [Feature Branches](https://bocoup.com/blog/git-workflow-walkthrough-feature-branches) so, in some point in time, my work may be dependent on another colleague's work, therefore I `rebase` my branch. With all these branch gymnastics, it's easy to lose track of the history of your branch. That's why I like to see which branches are pointing to which commits. When you use multiple remotes this is also very handy.

## Rebase

My configuration for the `rebase` operation is also a bit tweaked to fit my needs:

**Autosquash**

Imagine this situation: You have a Pull Request open, and some colleague of yours suggests a change. You change the code as you see fit and you create a new commit. So, since you want to keep your history nice and tidy, you mark that commit in some way to be squashed into one that existed originally in the Pull Request. Well, that marking can be done with `git commit --fixup=<hash>`, which will automatically prepend a nice `fixup!` to the commit title of `<hash>`. You now push this new commit and your colleague can see just those changes instead of checking the full PR again.

When everything is okay to merge, you still want the commit history to look nice, so you `rebase` and place the `fixup!` commit in the correct order. Doing that manually is error-proning, so how awesome would it be if `git` reordered the commits automatically? That's the purpose of the `autosquash` configuration: It'll automatically reorder your commits so that the fixups are put in the correct place when preparing the rebase.

Of course, you still have to rebase, otherwise that `fixup!` commit will be merged just as any other commit and the commit history becomes polluted.

## Diff

The diff UI in the console is a purely personal preference. I decided to tweak the font colors and weights a bit to be easier. I'm also using `diff-so-fancy` for the git commands that use the pager (e.g. `git log` or `git diff`).
