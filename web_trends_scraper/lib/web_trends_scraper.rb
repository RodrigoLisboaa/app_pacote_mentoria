# frozen_string_literal: true

require_relative "web_trends_scraper/version"
require 'nokogiri'
require 'open-uri'

module WebTrendsScraper
  class Error < StandardError; end
  
  class Scraper
    def initialize(url)
      @url = url
    end

    def fetch_trends
      # Carrega a página com UTF-8
      page = Nokogiri::HTML(URI.open(@url), nil, 'UTF-8')

      # Pega os títulos das notícias no Hacker News, excluindo "More"
      trends = page.css('span.titleline > a').map(&:text).reject { |text| text == "More" }

      return trends
    end
  end
end