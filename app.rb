require "sinatra/base"
require 'rss'

module Sinatweb
  class App < Sinatra::Base
    get '/' do
      @rss = RSS::Parser.parse("http://b.hatena.ne.jp/hotentry.rss")
      erb :index
    end
  end
end
