require 'open-uri'
require 'json'

module WebTrendsScraper
  class RedditScraper
    BASE_URL = 'https://www.reddit.com/r/'.freeze

    def self.fetch_trends(subreddit = 'technology')
      url = "#{BASE_URL}#{subreddit}/.json"
      response = URI.open(url, "User-Agent" => "Mozilla/5.0").read
      data = JSON.parse(response)

      trends = data['data']['children'].map.with_index(1) do |post, index|
        "#{index}. #{post['data']['title']}"
      end

      trends.join("\n")
    rescue StandardError => e
      puts "Erro ao buscar tendências do Reddit: #{e.message}"
      ""
    end
  end
end
