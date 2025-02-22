module ProductHuntScraper
  URL = "https://www.producthunt.com/"

  def self.fetch_trends
    page = Nokogiri::HTML(URI.open(URL, 'User-Agent' => 'Mozilla/5.0'))

    # Captura os nomes dos produtos, removendo numeração extra
    trends = page.css('a[data-test^="post-name-"]').map { |a| a.text.gsub(/^\d+\.\s*/, '').strip }

    # Se não encontrou nada, pode ser que o seletor precise de ajustes
    raise "Não foi possível encontrar tendências no Product Hunt" if trends.empty?

    # Formatar a saída com numeração contínua
    formatted_trends = trends.each_with_index.map { |trend, index| "#{index + 1}. #{trend}" }

    formatted_trends
  end
end
