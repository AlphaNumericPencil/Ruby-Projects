# rubyex1.rg

f = File.new("news", "r")

html = f.read #contents of news are in the html string

title_re = %r|<h2 class ="nw-title">(.+)</h2>|

titles = html.scan(title_re)

print titles
