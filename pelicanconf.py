#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

# Theme
THEME = "."

AUTHOR = 'Will Bradshaw'
SITENAME = 'Apomorphic'
SITEURL = '.'
TAGLINE = "A blog about biology, self-improvement, and the future"


TIMEZONE = 'Europe/London'

DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = 'feeds/all.atom.xml'
FEED_ALL_RSS = 'feeds/all.rss.xml'
AUTHOR_FEED_RSS = 'feeds/{slug}.rss.xml'
RSS_FEED_SUMMARY_ONLY = False

# Blogroll
LINKS = (('Pelican', 'http://getpelican.com/'),
         ('Python.org', 'http://python.org/'),
         ('Jinja2', 'http://jinja.pocoo.org/'),
         ('You can modify those links in your config file', '#'),)

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = 10

# Uncomment following line if you want document-relative URLs when developing
RELATIVE_URLS = True

# Extra options
STATIC_PATHS = ['extra/CNAME', 'extra/robots.txt', 'images']
EXTRA_PATH_METADATA = {'extra/CNAME': {'path': 'CNAME'},
        'extra/robots.txt': {'path': 'robots.txt'},
        }
TYPOGRIFY = True
 
# Articles
PATH = 'content'
ARTICLE_PATHS = ['posts',]
ARTICLE_SAVE_AS = '{date:%Y}/{date:%m}/{date:%d}/{slug}.html'
ARTICLE_URL = '{date:%Y}/{date:%m}/{date:%d}/{slug}'
DRAFT_SAVE_AS = 'drafts/{slug}.html'
DRAFT_URL = 'drafts/{slug}'

# Pages
PAGE_SAVE_AS = '{slug}.html'
PAGE_URL = '{slug}'

# Plugins
PLUGIN_PATHS=['./plugins']
PLUGINS = ['render_math']
