config.load_autoconfig()
c.url.searchengines = {
    'DEFAULT': 'https://duckduckgo.com/?ia=web&q={}',
    '!w': 'https://en.wikipedia.org/wiki/{}',
    '!j': 'https://jisho.org/search/{}',
    '!y': 'https://www.youtube.com/results?search_query={}',
}
