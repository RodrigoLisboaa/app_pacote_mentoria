# frozen_string_literal: true

require_relative "web_trends_scraper/version"
require_relative "web_trends_scraper/reddit_scraper"
require_relative "web_trends_scraper/product_hunt_scraper" # Importação correta
require 'nokogiri'
require 'open-uri'

module WebTrendsScraper
  class Error < StandardError; end
  
  class Scraper
    SOURCES = {
      hacker_news: 'https://news.ycombinator.com/',
      reddit: 'reddit', # Definimos um identificador genérico para Reddit
      product_hunt: 'product_hunt' # Identificador para Product Hunt
    }

    def initialize(source, subreddit = nil)
      @source = source.to_sym
      @subreddit = subreddit # Parâmetro opcional para especificar subreddits no Reddit
      @url = SOURCES[@source]
      raise Error, "Fonte desconhecida" unless @url || @source == :reddit || @source == :product_hunt
    end

    def fetch_trends
      case @source
      when :hacker_news
        page = Nokogiri::HTML(URI.open(SOURCES[:hacker_news], 'User-Agent' => 'Mozilla/5.0'))
        scrape_hacker_news(page)
      when :reddit
        fetch_reddit_trends # Chama a API JSON em vez do Nokogiri
      when :product_hunt
        ProductHuntScraper.fetch_trends # Agora delegamos ao módulo separado
      else
        raise Error, "Scraping não implementado para #{@source}"
      end
    end

    private

    def scrape_hacker_news(page)
      page.css('span.titleline > a').map(&:text)
    end

    def fetch_reddit_trends
      WebTrendsScraper::RedditScraper.fetch_trends(@subreddit || 'technology')
    end
  end
end