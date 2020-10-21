# Decidim::Cookies

This module provide a cookies banner using Orejime (https://github.com/empreinte-digitale/orejime).

## Usage

The banner is visible on every page except the administrators section.

This banner allows to accept all cookies, or refuse all cookies, or choose the cookies wanted or not. Furthermore, a description is configurable to explain each cookies and the purpose.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "decidim-cookies", git: "https://github.com/OpenSourcePolitics/decidim-module_cookies.git"
```

And then execute:

```bash
bundle install
```
## Usage
When installed the banner will appear at the bottom right of the page.
![cookie banner](https://i.imgur.com/WUisjMy.png)

When the user clicks on "Learn more" he will get a detail page of all cookies declared (see "how to add a cookie bellow").
![details](https://i.imgur.com/i0M5mn7.png)

After accepting or saving preferences the user will be able to revoke cookie acceptance by clicking a link the footer. (⚠️ the link only appears after a refresh of the page or navigating to another one).
![revoke](https://i.imgur.com/AeGBXgj.png)

## More informations

By default, the decidim's required cookies are enabled (cf: [Javascript configuration file](app/assets/javascripts/decidim/cookies/cookies.js.es6.erb))
* `decidim-cc`
* `_decidim_session`

An optional cookie is defined by default in the [engine configuration file](lib/decidim/cookies/engine.rb)
* `matomo`

### Add new cookies to the banner 

You can add specific cookies to the banner using initializers. Cookies list is fetched from `Rails.application.config.cookies`.

Example of cookie in initializer : 

```
Rails.application.config.cookies = [
  {
      name: "matomo",
      title: "Matomo",
      cookies: %w(matomo_session pk_id pk_ses _pk_ref _pk_cvar),
      purposes: %w(tracking analytics)
  }
]
```

When you add new cookie, you have to provide translation for language activated on platform

1. Add your translations in respective locales files
2. Add those new translations to the Orejime banner [configuration](app/views/layouts/decidim/_cookies.html.erb) (Configuration has to be outside the JS file because of assets precompilation) 

Repeat this process if you create new purpose

## Bugs ? 

Please check the [known issues file](docs/known_issues.md)

## Contributing

See [Decidim](https://github.com/decidim/decidim).

## License

This engine is distributed under the GNU AFFERO GENERAL PUBLIC LICENSE.
