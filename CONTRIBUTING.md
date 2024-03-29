# CONTRIBUTING

## GitHub
Follow these steps to make changes to the repository.

1. [Create a fork](https://help.github.com/articles/fork-a-repo/) of the [repository](https://github.com/kianmeng/webservice-ipapi).
2. Setup your [development environment](#development-environment).
3. Do necessary changes and make sure all tests passed.
4. [Submit a pull request](https://help.github.com/articles/creating-a-pull-request/).

## Development Environment
Setup your development environment as follows.

### Docker

If you have Docker installed, you can build your Docker container for this
project.

    $ docker build -t webservice-ipapi .
    $ docker run -it -v $(pwd):/root webservice-ipapi bash
    # cpanm --installdeps --notest .

### Milla

Setting up the required packages.

    $ milla authordeps --missing | cpanm
    $ milla listdeps --missing | cpanm

Check you code coverage.

    $ milla cover

Several ways to run the test.

    $ milla test
    $ milla test --author --release
    $ AUTHOR_TESTING=1 RELEASE_TESTING=1 milla test
    $ AUTHOR_TESTING=1 RELEASE_TESTING=1 milla run prove t/01_instantiation.t
    $ LOGGING=1 milla run prove t/01_instantiation.t
    $ IPAPI_ACCESS_KEY=1xxxxxxxxxxxxxxxxxxxxxxxxxxxxx32 milla run prove t/02_query.t

