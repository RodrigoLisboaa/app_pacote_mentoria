# UnitConverter

# UnitConverter Gem

Este é um conversor de unidades para temperaturas, feito com Ruby. Ele permite converter entre Celsius, Fahrenheit e Kelvin.

## Como Usar

Para usar o conversor, basta chamar o método apropriado para a conversão desejada.

### Exemplo:

```ruby
# Celsius para Fahrenheit
UnitConverter::TemperatureConverter.celsius_to_fahrenheit(0)  # Retorna 32

# Fahrenheit para Celsius
UnitConverter::TemperatureConverter.fahrenheit_to_celsius(32)  # Retorna 0

# Celsius para Kelvin
UnitConverter::TemperatureConverter.celsius_to_kelvin(0)  # Retorna 273.15

# Kelvin para Celsius
UnitConverter::TemperatureConverter.kelvin_to_celsius(273.15)  # Retorna 0

# Fahrenheit para Kelvin
UnitConverter::TemperatureConverter.fahrenheit_to_kelvin(32)  # Retorna 273.15

# Kelvin para Fahrenheit
UnitConverter::TemperatureConverter.kelvin_to_fahrenheit(273.15)  # Retorna 32

```markdown
## Instalação

Se você ainda não tiver o Bundler instalado, instale-o com o comando:

```bash
gem install bundler

Depois, adicione a gem ao seu projeto executando:
bundle add unit_converter

Ou, se preferir instalar diretamente:
gem install unit_converter

```markdown
## Testes

Para rodar os testes da gem, utilize o comando abaixo:

```bash
rspec