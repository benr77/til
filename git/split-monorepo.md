Splitting A Monorepo
=====

You can split up a monorepo into separate individual repositories, whilst maintaining the commit history using:

  ```bash
  cp -a monorepo singlerepo
  cd singlerepo
  git filter-repo --path monorepo/path/to/app1 --force --path-rename monorepo/path/to/app1/:
  git remote add origin git@gitlab.com:my-project/app.git
  git push -f -u origin main
  ```
  
  This requires you to install [Git Filter Repo](https://github.com/newren/git-filter-repo).
