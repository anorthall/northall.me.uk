# Main settings
AUTHOR = 'Andrew Northall'
SITENAME = 'Andrew Northall'
SITEURL = 'https://northall.me.uk'
RELATIVE_URLS = True  # for local development

# Plugins
PLUGINS = ['jinja2content']

# Articles and content
PATH = 'content'
ARTICLE_PATHS = ['posts']
ARTICLE_SAVE_AS = 'posts/{slug}/index.html'
ARTICLE_URL = 'posts/{slug}/'
PAGE_URL = '{slug}/'
PAGE_SAVE_AS = '{slug}/index.html'

# Theme
THEME = 'themes/northall'
THEME_STATIC_DIR = 'assets'
THEME_STATIC_PATHS = ['static']

# Timezone and language
TIMEZONE = 'Europe/London'
DEFAULT_LANG = 'en'
DEFAULT_DATE_FORMAT = '%d %B %Y'

# Feed generation
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Pagination
DEFAULT_PAGINATION = 10

# Default metadata
DEFAULT_METADATA = {
    "status": "draft",
}

# Disable certain page types
DIRECT_TEMPLATES = ['index']
AUTHOR_SAVE_AS = ''
CATEGORY_SAVE_AS = ''
TAG_SAVE_AS = ''
