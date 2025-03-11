# frozen_string_literal: true
require "email_validator/version"

module EmailValidator
  class Validator
    # Regex melhorada para suportar caracteres especiais e domínios personalizados
    EMAIL_REGEX = /\A[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/

    # Lista de domínios comuns para sugestão de correção
    COMMON_DOMAINS = ["gmail.com", "yahoo.com", "outlook.com", "hotmail.com", "icloud.com"]

    def self.valid?(email)
      email.match?(EMAIL_REGEX)
    end

    def self.suggest_correction(email)
      return nil unless email.include?("@")

      user, domain = email.split("@")
      return nil if domain.nil?

      closest_match = COMMON_DOMAINS.min_by { |d| levenshtein_distance(domain, d) }
      return closest_match if levenshtein_distance(domain, closest_match) <= 2

      nil
    end

    private

    # Algoritmo de distância de Levenshtein para comparar domínios
    def self.levenshtein_distance(s1, s2)
      m, n = s1.length, s2.length
      dp = Array.new(m + 1) { Array.new(n + 1, 0) }

      (0..m).each { |i| dp[i][0] = i }
      (0..n).each { |j| dp[0][j] = j }

      (1..m).each do |i|
        (1..n).each do |j|
          cost = s1[i - 1] == s2[j - 1] ? 0 : 1
          dp[i][j] = [
            dp[i - 1][j] + 1,   # Remoção
            dp[i][j - 1] + 1,   # Inserção
            dp[i - 1][j - 1] + cost # Substituição
          ].min
        end
      end

      dp[m][n]
    end
  end
end