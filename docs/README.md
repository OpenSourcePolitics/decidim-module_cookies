# Module cookies

This module aims to provide an RGPD compliant cookies banner using Orejime (https://github.com/empreinte-digitale/orejime).

## Getting started

You want to implement this module in your Decidim application ?

#### Please add this gem into your Gemfile

```ruby
gem 'decidim-cookies'
```

#### Run bundle 

```bash
bundle
```

#### Configure the cookies banner

You can find the default banner configuration in `/app/assets/javascripts/decidim/cookies/cookies.js.es6.erb` of this module.

1. Define in the initializers the cookies you want

This example bellow is the default configuration
```ruby
    Rails.application.config.cookies = [
          {
              name: "analytics",
              title: "Google analytics",
              cookies: %w(_ga _gat _gid __utma __utmb __utmc __utmt __utmz),
              purposes: %w(tracking analytics)
          },
          {
              name: "matomo",
              title: "Matomo",
              cookies: %w(matomo_session pk_id pk_ses _pk_ref _pk_cvar),
              purposes: %w(tracking analytics)
          },
          {
              name: "decidim",
              title: "decidim-cc",
              required: true,
              purposes: %w(checking)
          }
      ]
```

Note: For the last one cookie named "decidim", please do not add "decidim-cc" in cookies key because it could occurs troubles.


## Configuration

Fields you may want to override 

* `privacyPolicy`: String,  this is the route redirection for the privacy policy link in modal. Please update it to match your privacy policy route, or whatever you want
* `apps`: Array of Objects, this is the exhaustive list of cookies that user can find navigating through your application. Please mention every cookies that the user could get during navigation.

There is some fields that are defined in a different file, mainly because of assets compilation and had to be dynamic.

You can find those fields in `/app/views/layouts/decidim/_cookies.html.erb`

Concern fields are 
* `lang`, allows to update Orejime banner language when user switch language platform 
* `translations`, allows to fetch translations defined in Decidim's app. You can find Orejime translations at (https://github.com/empreinte-digitale/orejime/blob/master/src/translations/en.yml)
* `logo`, allows to set a logo if the organization has one 
* `apps`, exhaustive list of cookies 

## Notes 

In the cookies list configuration. There is an issue about the required field. Please for `decidim-cc` cookie, do not add the `decidim-cc` to the cookies list
