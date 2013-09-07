---
layout: post
title: The Puppet Show — Quick bonding of resources
abstract: Painless modelling of simple dependencies between resources, avoiding the somewhat tedious and chatty require and notify attributes.
categories:
    - devops
tags:
    - how.to
    - puppet
published: true
---
To avoid modelling simple dependencies between resources using the somewhat tedious and chatty require and notify attributes,
the `->` and `~>` operators can help. 
They are applicable to any resources that are by nature closely related and thus defined in the same file anyway.

A typical example is a group and a user belonging to it:

{% highlight groovy %}
class accounts::admins {
    group { 'admin': ensure => 'present' }
    ->
    user { 'sysop':
        ensure  => 'present',
        comment => 'now coming with sudo power!',
        gid     => 'users',
        groups  => ['admin',],
    }
}
{% endhighlight %}

You can chain more users belonging to the same group by appending another `… -> user {…}` construct.

For update notification relationships, `~>` does the same thing.

