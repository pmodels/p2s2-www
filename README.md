# Website for the P2S2 Workshop

The website is created by using **Jekyll** (https://jekyllrb.com/) and published via **Github Actions** (https://docs.github.com/en/actions). All editions from 2021 will be purely maintained on this github repository.

## History
Old websites (2011-2020) are maintained at [gitlab](https://gitlab.com/pmodels/websites/p2s2) and the web server is setup by Argonne.
However, we can no longer make any updates on the old websites. If any change is needed, please migrate the corresponding year's folder to
this repository (need to transfer P2P files to Jekyll formats).

If you need permisison to access [gitlab](https://gitlab.com/pmodels/websites/p2s2), please email Min Si.

## How to Modify
The following steps show how to create a new 2022 workshop website as an example.

- `git clone https://github.com/pmodels/p2s2-www.git p2s2-www/`
- Enter p2s2-www directory (i.e. root directory) and execute `cp -r 2021 2022`
- Change `index.html` in root directory and change `URL=2021` to `URL=2022` in line 5
- Make change locally and confirm the updated website
- To build and serve the website locally, you can execute `bundle exec jekyll serve --livereload` in root directory and access `http://localhost:4000`
- Once edit is done, commit your changes and `git push` to repo ## this step will trigger the [deployment action](https://github.com/pmodels/p2s2-www/blob/master/.github/workflows/deploy.yml)
- Confirm the updated website at https://pmodels.github.io/p2s2-www