# frozen_string_literal: true
require 'spec_helper'

RSpec.describe StringFormatter::CoreExt::String do
  describe '#to_slug' do
    it 'converte string comum para slug' do
      expect('Hello World'.to_slug).to eq('hello-world')
    end
    
    it 'remove acentos e caracteres especiais' do
      expect('Olá Mundo! Como vai?'.to_slug).to eq('ola-mundo-como-vai')
    end
    
    it 'lida com múltiplos espaços e hífens' do
      expect('Teste   com  espaços--e-hífens'.to_slug).to eq('teste-com-espacos-e-hifens')
    end
  end
  
  describe '#normalize' do
    it 'remove acentos' do
      expect('Olá Você'.normalize).to eq('Ola Voce')
    end
    
    it 'mantém maiúsculas e minúsculas' do
      expect('ÁéÍóÚ'.normalize).to eq('AeIoU')
    end
  end
  
  describe '#format_cpf' do
    it 'formata CPF válido' do
      expect('12345678901'.format_cpf).to eq('123.456.789-01')
    end
    
    it 'não altera strings que não parecem CPF' do
      expect('123456'.format_cpf).to eq('123456')
      expect('abcdefghijk'.format_cpf).to eq('abcdefghijk')
    end
  end
  
  describe '#format_phone' do
    it 'formata telefone fixo sem DDD' do
      expect('12345678'.format_phone).to eq('1234-5678')
    end
    
    it 'formata celular sem DDD' do
      expect('912345678'.format_phone).to eq('9.1234-5678')
    end
    
    it 'formata telefone fixo com DDD' do
      expect('1112345678'.format_phone).to eq('(11) 1234-5678')
    end
    
    it 'formata celular com DDD' do
      expect('11912345678'.format_phone).to eq('(11) 9.1234-5678')
    end
    
    it 'não altera formatos não reconhecidos' do
      expect('123'.format_phone).to eq('123')
    end
  end
end