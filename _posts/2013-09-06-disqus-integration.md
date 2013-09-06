---
layout: post
title: Integrating the Disqus service into your blog
abstract: Add the Disqus service to your blog pages to get comment threads in a few easy steps.
categories:
    - webdev
tags:
    - how.to
    - services
published: true
---

To give your hand-crafted blog the ability to gather visitor comments,
[Disqus](http://disqus.com/) is a fast way to get there with no hassle.


#### Disqus Registration

You can register your site and create a new account in one go, by surfing to the
[site registration](https://disqus.com/admin/signup) form. 

1. Fill in the form.
1. In step 2, choose “Universal Code” as the platform. Copy the code snippets to your site code, and push the changes to publish them.
1. Step 3 will present you with your new site's administration panel.

My [first attempt](https://github.com/jhermann/jhermann.github.io/commit/923991466108bade35843bacce91016cbe9ee661)
was quite successful, but I made an error with the comment count integration. You have to actually 
[create additional links](https://github.com/jhermann/jhermann.github.io/commit/0bdfabb5f0e82d1fa8d67604899e9d6a0ec75547)
where Disqus can insert the current counters. I also did a little styling in that second changeset.

And that was it, see below for the result.
