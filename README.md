# Vlad Assets

Vlad tasks for the Rails asset pipeline. They are very simple, but I found
myself duplicating them across all my projects, so this gem was born.

## Installation

Add this line to your application's Gemfile:

    gem 'vlad-assets', :require => false

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vlad-assets

## Usage

Then add to your `config/deploy.rb`:

    require 'vlad/assets'

Two tasks are provided that you can add into your existing deploy task(s):
`vlad:assets:clean` & `vlad:assets:precompile`, which are anagolous to
the `assets:clean` & `assets:precompile` tasks provided to Rails.

If you are setting `shared_paths` in your deploy configuration, you should add
`{'assets' => 'public/assets'}` if you do zero-downtime deploys. This solves
the problem of assets disappearing when the release directory change but the
app has not yet restarted. If you do not set `shared_paths` manually, Vlad
Assets will do so for you—though you may prefer to add it to be explicit.

## Contributing

Contributions are welcome. Please be sure that your pull requests are atomic
so they can be considered and accepted separately.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits & License

Copyright © 2012 J. Andrew Marshall. All rights reserved.
License is available in the LICENSE file.
