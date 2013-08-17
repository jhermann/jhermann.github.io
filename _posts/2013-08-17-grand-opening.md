---
layout: post
post_title: Grand Opening
---

Well, this was moderately easy, by combining WDW's 
[jekyll-boilerplate](https://github.com/web-design-weekly/jekyll-boilerplate)
project template for Jekyll with one of the github standard themes.

Here's a rough outline of the necessary steps:

* Copy `jekyll-boilerplate` into your `»accountname«.github.io` repository.
* Save the content of `index.html`.
* *Overwrite* this with one of the standard templates, as [described here](https://help.github.com/articles/creating-pages-with-the-automatic-generator).
* `git pull` the theme you just saved.
* Merge the new `index.html` with `_layouts/default.html` (i.e. copy the contents, and insert the existing template markup at the appropriate places).
* Restore the `index.html` saved from `jekyll-boilerplate`.
* Change `images` and `stylesheets` URLs to be server-absolute, else blog posts won't render correctly. This was at least necessary for the theme I chose, and might not apply to others.

And then what you see here is what you'll get.

