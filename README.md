# AppSendr

AppSendr is a free service for distributing iOS IPA and Android APK files over-the-air with a short URL. This gem is using the AppSendr V1 API.

  https://api.appsendr.com

## Installation

Add this line to your application's Gemfile:

    gem 'appsendr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install appsendr

## Usage

**Command Line**

  appsendr create `FILE PATH` `IDENTIFIER`

  appsendr details `ID`

  appsendr destroy `ID` `TOKEN`


**Ruby**

  Appsendr::App.details(`ID`)

  Appsendr::App.create(`FILE`, `ICON FILE`, `IDENTIFIER`)

  Appsendr::App.destroy(`ID`, `TOKEN`)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
