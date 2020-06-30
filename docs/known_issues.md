# Errors encountered while implementing cookies modules


## Uncaught TypeError: Cannot create property '<COOKIE_NAME>' on boolean 'true'
Occured on version 0.18.0 && 0.22.0

This error occured when accessing homepage when the cookies banner should appear. 

__Solution__: Ensure you do not already have `decidim-cc` cookie defined. If it is defined, remove it and it should work as wanted. 

## Warning cookies banner still visible but not the cookies banner module
Occured on version 0.18.0 && 0.22.0

This behaviour can be observated when `app/views/layouts/decidim/_application.html.erb` module's file is overrided by the working application. 

__Solution__: Ensure the `"layouts/decidim/cookies"` partial is well rendered.  
