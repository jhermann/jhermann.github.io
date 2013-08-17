---
layout: post
title: Grand Opening
categories:
    - documentation
tags:
    - how.to
    - github
    - jekyll
published: true
---

#### Setting up my github pages

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


#### Locally serving your site

To avoid the up to 10 minute delay of the github publishing queue, you can install
Jekyll locally as `root`:

{% highlight sh %}
apt-get install ruby1.9.1 # on Ubuntu 12.04, your distro may vary
gem install jekyll
gem install rdiscount
{% endhighlight %}

Then within your git working directory, start an auto-refreshing Jekyll server process using…

{% highlight sh %}
jekyll serve --watch >jekyll.log 2>&1 &
{% endhighlight %}

Now, just save any changes to your posts or layouts, and then reload the instantly rendered result
in your browser, pointed at [http://localhost:4000/](http://localhost:4000/).


#### Further reading

**Tutorials and How-Tos**

* [Quickly publish beautiful pages for you and your projects](http://pages.github.com/)
  * [Creating Project Pages manually](https://help.github.com/articles/creating-project-pages-manually)
  * [Creating Pages with the automatic generator](https://help.github.com/articles/creating-pages-with-the-automatic-generator)
* [Getting to Know GitHub Pages: Static Project Pages, Fast](http://webdesign.tutsplus.com/tutorials/applications/getting-to-know-github-pages-static-project-pages-fast/)

**Tools**

* [Jekyll — Simple blog-aware static sites](http://jekyllrb.com/)
* [Zero to Hosted Jekyll Blog in 3 Minutes](http://jekyllbootstrap.com/)
* [Helpers for hosting python projects on GitHub](https://github.com/dinoboff/github-tools/)

