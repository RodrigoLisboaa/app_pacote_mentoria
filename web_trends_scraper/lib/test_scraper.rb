require_relative 'web_trends_scraper'

# Defina aqui qual fonte e subreddit você quer testar
source = :reddit # Pode ser :hacker_news ou :reddit
subreddit = 'technology' # Escolha o subreddit, por exemplo: 'programming', 'trendingsubreddits'

scraper = WebTrendsScraper::Scraper.new(source, subreddit)
trends = scraper.fetch_trends

puts "Tendências encontradas em #{subreddit.capitalize}:"
puts trends
