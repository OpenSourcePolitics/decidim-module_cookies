# Module cookies

This module aims to provide an RGPD compliant cookies banner using Orejime (https://github.com/empreinte-digitale/orejime).

## Getting started

You want to implement this module in your Decidim application ?

Please add this gem into your Gemfile

```ruby
gem 'decidim-cookies'
```

And then run bundle 

```bash
bundle
```

Then override the main config file of Orejime configuration that you can find in this app in `/app/assets/javascripts/cookies/cookies.js.es6.erb`

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

## Notes 

In the cookies list configuration. There is an issue about the required field. Please for `decidim-cc` cookie, do not add the `decidim-cc` to the cookies list
