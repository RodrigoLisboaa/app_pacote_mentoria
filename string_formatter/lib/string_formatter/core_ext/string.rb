# lib/string_formatter/core_ext/string.rb
module StringFormatter
  module CoreExt
    module String
      # Converte uma string para slug (URL amigável)
      def to_slug
        normalized = self.normalize
        
        normalized.downcase
                  .gsub(/[^\w\s-]/, '') # Remove caracteres especiais
                  .gsub(/\s+/, '-')     # Substitui espaços por hífens
                  .gsub(/-+/, '-')      # Remove hífens duplicados
      end
      
      # Remove acentos e normaliza caracteres
      def normalize
        self.tr(
          "ÀÁÂÃÄÅàáâãäåĀāĂăĄąÇçĆćĈĉĊċČčÐðĎďĐđÈÉÊËèéêëĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħÌÍÎÏìíîïĨĩĪīĬĭĮįİıĴĵĶķĸĹĺĻļĽľĿŀŁłÑñŃńŅņŇňŉŊŋÒÓÔÕÖØòóôõöøŌōŎŏŐőŔŕŖŗŘřŚśŜŝŞşŠšſŢţŤťŦŧÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸŹźŻżŽž",
          "AAAAAAaaaaaaAaAaAaCcCcCcCcCcDdDdDdEEEEeeeeEeEeEeEeEeGgGgGgGgHhHhIIIIiiiiIiIiIiIiIiJjKkkLlLlLlLlLlNnNnNnNnnNnOOOOOOooooooOoOoOoRrRrRrSsSsSsSssTtTtTtUUUUuuuuUuUuUuUuUuUuWwYyyYyYZzZzZz"
        )
      end
      
      # Formata um CPF (assume string com 11 dígitos)
      def format_cpf
        return self unless self.match?(/^\d{11}$/)
        
        "#{self[0..2]}.#{self[3..5]}.#{self[6..8]}-#{self[9..10]}"
      end
      
      # Formata número de telefone brasileiro
      def format_phone
        # Remove tudo que não for dígito
        digits = self.gsub(/\D/, '')
        
        case digits.length
        when 8 # Telefone fixo sem DDD
          "#{digits[0..3]}-#{digits[4..7]}"
        when 9 # Celular sem DDD
          "#{digits[0]}.#{digits[1..4]}-#{digits[5..8]}"
        when 10 # Telefone fixo com DDD
          "(#{digits[0..1]}) #{digits[2..5]}-#{digits[6..9]}"
        when 11 # Celular com DDD
          "(#{digits[0..1]}) #{digits[2]}.#{digits[3..6]}-#{digits[7..10]}"
        else
          self # Retorna sem alteração se não reconhecer o formato
        end
      end
    end
  end
end

# Estender a classe String do Ruby com nossos métodos
String.include StringFormatter::CoreExt::String