require 'sinatra'
require 'rss'

get '/' do
    @yahoo = RSS::Parser.parse("http://rss.dailynews.yahoo.co.jp/fc/computer/rss.xml")
    @itmnews = RSS::Parser.parse("http://rss.rssad.jp/rss/itmnews/2.0/news_bursts.xml")
    erb :index
end
