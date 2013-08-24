---
layout: post
title: Integrating your GitHub project into Jenkins
abstract: Make your integration actually continuous, and automatic…
categories:
    - tools
tags:
    - how.to
    - github
    - jenkins
published: true
---

If you want your Jenkins builds to start immediately 
after you pushed some changes to your repository, 
all that is needed is a little additional configuration.


#### Jenkins Configuration

To get rid of the obvious stuff, you of course have to add your `Git` repository to `Source Code Management`.
Additionally, for Jenkins to use the GitHub service hook we add next, 
check the `Build when a change is pushed to GitHub` trigger in `Build Triggers`.

In order for your Jenkins instance to work together with GitHub 
and the above to be part of your Jenkins web interface, install the
`git`, `git-client`, `git-server`, `github`, and `github-api` Jenkins plugins.
Those are the ones installed on the Jenkins I used, they might not all be needed
for push notifications to work. To find out what's installed on a Jenkins instance,
refer to this [stackoverflow answer](http://stackoverflow.com/a/12730830/635879).

If you have the `libxml2-utils` package and the `httpie` Python package installed,
this will give you a nice list:

{% highlight sh %}
$ http -b "${JENKINS_URL%/}/pluginManager/api/xml?depth=1&xpath=/*/*/shortName|/*/*/version&wrapper=plugins" \
    | xmllint --format - | grep -i -A1 git
  <shortName>git</shortName>
  <version>1.4.0</version>
…
{% endhighlight %}


#### GitHub Configuration

Go to `Service Hooks` in the`Settings` of your repository, 
and select `Jenkins (GitHub plugin)` from the list.
Then enter the `Jenkins Hook Url` as described in the notes below the settings form,
make the hook `Active` and save it. 
To test your configuration, use the `Test Hook` button.


#### Engage!

If you did all of the above, open your project in Jenkins, and then push some changes.
Like magic, a build should be started…

