# api-docs
http://gresb.github.io/api-docs/

This is the source and issue tracker for the GRESB API.

You will need a copy of this repo, a local ruby install with the bundler installed and then:

* Install/Update tools with `bundle install`
* Run a local test server with `bundle exec middleman server`
* Edit the files in `source` and see the changes at `http://127.0.0.1:4567/`
* Commit your changes
* Publish to github pages with `rake publish`

More Info:

https://github.com/edgecase/middleman-gh-pages
https://github.com/middleman/middleman
http://bundler.io/
https://www.ruby-lang.org/en/

## How to run it locally

The easiest way of running it locally is by using Docker. If you're on a Windows machine it is adviced to install WSL first.

1. Install [WSL2 and Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#1-overview) (Windows machine only)
2. Install [Docker](https://docs.docker.com/get-docker/)
3. Install [Git](https://github.com/git-guides/install-git)
4. Clone the repo `git clone https://github.com/GRESB/api-docs.git`
5. Run `docker compose up` to spin up a local server

Copyright GRESB B.V.
