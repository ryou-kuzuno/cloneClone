class YahoosController < ApplicationController
    require "open-uri"
    require "nokogiri"
    
    def index
      # アクセスしたいURLを指定
      uri = "http://www.yahoo.co.jp/"

      #　nokogiriクラスを利用し、HTMLを解析、扱いやすいオブジェクトに変換
      @doc = Nokogiri::HTML(open(uri),nil,"utf-8")
    end
end
