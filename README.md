# angular-seed

A seed project for Angular

## Setup

1. Install [Homebrew](http://brew.sh) (optional, but highly recommended).

2. Install [Node.js](https://nodejs.org) (these days, Node comes with [NPM](https://www.npmjs.org)) and PhantomJS. Assuming you have Homebrew installed:

        brew install node phantomjs

3. Install Ruby (> 2.0) and [Bundler](http://bundler.io). Mac OS comes with Ruby 2.0 these days, which is fine. Otherwise think about using [rbenv](https://github.com/sstephenson/rbenv) to manage Ruby versions. If you do stick with the built-in Ruby in Mac OS, keep in mind that you need to be root to install gems.

4. Install [gulp](http://gulpjs.com) and [bower](http://bower.io). Gulp is the build system we're using. Bower is a package manager for front-end libraries.

        npm install -g gulp bower

5. Install the rest of the prerequisites using their various dependency management systems:

  We have two kinds of dependencies in this project: tools and angular framework code.  The tools help
  us manage and test the application.

  * We get the tools we depend upon via `npm`, the [node package manager][npm].
  * We get the angular code via `bower`, a [client-side code package manager][bower].

  *Note: you might need to be root to run `bundle install` on your system*

        npm install
        bower install

6. Create a new app:

        gulp template/app

7. Create a page for your new app

        gulp template/page

8. Run the full test suite:

        gulp test

9. Run the development server and unit tests:

        gulp

10. Visit your new page:

       http://localhost:3000/your-new-page


## Deployment

Deployment to an S3 bucket is done in one command. You only need to specify the destination bucket and the desired config file to use

    gulp deploy --bucket my-bucket-name.mutuallyhuman.com --config staging

AWS credentials are read from `~/.aws/credentials`.


## Things to note

### Defining controllers

Make sure to `return this` from your controller definitions, so that Angular doesn't think you're returning a factory.

### Jasmine versions

The unit tests run vanilla Jasmine, currently version 2.1.

The e2e tests run [minijasminenode](https://github.com/juliemr/minijasminenode), and specifically they run a version which only supports Jasmine 1.x syntax.
