---
layout: index
title: "Home"
---

Testing


{% capture numposts %}{{ site.posts | size }}{% endcapture %}
{% if numposts != '0' %}
## Talks by Year

{% for post in site.posts %}{% assign currentyear = post.date | date: "%Y" %}{% if currentyear != prevyear %}
### {{ currentyear }}
{% assign prevyear = currentyear %}{% endif %} - [{{ post.title }}]({{ site.baseurl }}{{ post.url }}) - {{ post.date | date: '%B %-d' }}
{% endfor %}
{% endif %}


