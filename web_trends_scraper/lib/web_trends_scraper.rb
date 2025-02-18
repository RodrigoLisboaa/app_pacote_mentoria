# frozen_string_literal: true

require_relative "web_trends_scraper/version"
require_relative 'web_trends_scraper/reddit_scraper'
require 'nokogiri'
require 'open-uri'

module WebTrendsScraper
  class Error < StandardError; end
  
  class Scraper
    SOURCES = {
      hacker_news: 'https://news.ycombinator.com/',
      reddit: 'reddit' # Definimos um identificador genérico para Reddit
    }

    def initialize(source, subreddit = nil)
      @source = source.to_sym
      @subreddit = subreddit # Parâmetro opcional para especificar subreddits no Reddit
      @url = SOURCES[@source]
      raise Error, "Fonte desconhecida" unless @url || @source == :reddit
    end

    def fetch_trends
      case @source
      when :hacker_news
        page = Nokogiri::HTML(URI.open(@url, 'User-Agent' => 'Mozilla/5.0'))
        scrape_hacker_news(page)
      when :reddit
        fetch_reddit_trends # Chama a API JSON em vez do Nokogiri
      else
        raise Error, "Scraping não implementado para #{@source}"
      end
    end

    private

    def scrape_hacker_news(page)
      page.css('span.titleline > a').map(&:text)
    end

    def fetch_reddit_trends
      return RedditScraper.fetch_trends(@subreddit || 'technology')
    end
  end
end