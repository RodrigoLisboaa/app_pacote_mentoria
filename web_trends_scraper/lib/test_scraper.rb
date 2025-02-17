require_relative 'web_trends_scraper'

scraper = WebTrendsScraper::Scraper.new('https://news.ycombinator.com/') # Exemplo com Hacker News
trends = scraper.fetch_trends

puts "Tendências encontradas:"
puts trends