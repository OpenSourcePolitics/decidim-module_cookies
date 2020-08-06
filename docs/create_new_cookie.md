# Add a new cookie to the orejime banner

### Add new cookie

Use initializers for adding new cookies to the Orejime banner
 
Cookies list is fetched from `Rails.application.config.cookies`

Example initializer : 

```
{
  name: "matomo",
  title: "Matomo",
  cookies: %w(matomo_session pk_id pk_ses _pk_ref _pk_cvar),
  purposes: %w(tracking analytics)
}
```

If you add a new `purpose`, please remember to add a translation

Furthermore, do not forget to check translations defined in `/app/views/layouts/decidim/_cookies.html.erb`

### Notes

By default, `matomo` is defined inside `/lib/decidim/cookies/engine.rb`

Required cookies are mentionned in `/app/assets/javascripts/decidim/cookies/cookies.js.es6.erb`. Those required cookies are :

* `decidim-cc`
* `_decidim_session`
