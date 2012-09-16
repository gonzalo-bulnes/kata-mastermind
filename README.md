Mastermind Kata
===============

This _kata_ is decribed in [The RSpec Book: Behaviour Driven Development with Rspec, Cucumber, and Friends][The RSpec Book] by David Chelimsky _and al._.

It aims at applying the <abbr title="Behaviour-Driven Development">BDD</abbr> using Cucumber and RSpec to write a Mastermind game in Ruby.

  [The RSpec Book]: http://pragprog.com/book/achbd/the-rspec-book

Environment Setup
-----------------

### RVM

I use [RVM][RVM] to keep _kata_ environments separated from each others. In my opinion the easiest way to use it is setting a project `.rvmrc` file in the project directory.

	cd kata-mastermind
	rvm --rvmrc --create 1.9.3-head@kata-mastermind

	# Verify the .rvmrc file is detected, and authorize RVM to use it
	# to determine which version of Ruby and which gemset it should use.
	cd ..
	cd kata-mastermind
	====================================================================================
	= NOTICE                                                                           =
	====================================================================================
	= RVM has encountered a new or modified .rvmrc file in the current directory       =
	= This is a shell script and therefore may contain any shell commands.             =
	=                                                                                  =
	= Examine the contents of this file carefully to be sure the contents are          =
	= safe before trusting it! ( Choose v[iew] below to view the contents )            =
	====================================================================================
	Do you wish to trust this .rvmrc file? (/path/to/kata-mastermind/.rvmrc)
	y[es], n[o], v[iew], c[ancel]> yes

	Using: ~/.rvm/gems/ruby-1.9.3-head@kata-mastermind

	# Keep the file ignored by version control
	echo ".rvmrc" >> .gitignore

See also the [RVM documentation][.rvmrc].

  [RVM]: http://rvm.io
  [.rvmrc]: https://rvm.io/workflow/rvmrc

### Cucumber and RSpec

Once RVM has been set up, you can install all the required gems without messing up your system Ruby install.

To manage Ruby gems and keep dependencies documented, I like to use [Bundler][Bundler].
First install bundler:

	cd kata-mastermind
	gem install bundler

Given you install it from the project directory and you created a `.rvmrc` file in the previous section RVM will ensure that Bundler will be installed into your project _gemset_.
Create a `Gemfile` in the :

	# kata-mastermind/Gemfile

	source 'https://rubygems.org'
	gem "cucumber"
	gem "rspec"

And finally run install your bundle:

	bundle install

	...
	Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.

  [Bundler]: http://gembundler.com/