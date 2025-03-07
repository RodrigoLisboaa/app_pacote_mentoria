require_relative 'web_trends_scraper'

# Defina aqui qual fonte e subreddit você quer testar
source = :reddit # Pode ser :hacker_news, :reddit ou :product_hunt
subreddit = 'technology' # Apenas usado se a fonte for Reddit

scraper = WebTrendsScraper::Scraper.new(source, subreddit)
trends = scraper.fetch_trends

puts "Tendências encontradas em #{source.to_s.capitalize.gsub('_', ' ')}:"
puts trends