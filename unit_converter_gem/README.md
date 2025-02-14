# UnitConverter

# UnitConverter Gem

Este é um conversor de unidades feito com Ruby. Ele permite converter entre diferentes unidades de **temperatura, distância e peso/massa**.

## Como Usar

Para usar o conversor, basta chamar o método apropriado para a conversão desejada.

### Exemplo:

#### Conversão de Temperatura:

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

require 'unit_converter'

Conversão de Distância:

# Quilômetros para milhas
puts UnitConverter::DistanceConverter.kilometers_to_miles(10)  # Retorna 6.21371

# Milhas para quilômetros
puts UnitConverter::DistanceConverter.miles_to_kilometers(10)  # Retorna 16.0934

# Metros para quilômetros
puts UnitConverter::DistanceConverter.meters_to_kilometers(1000)  # Retorna 1.0

# Quilômetros para jardas
puts UnitConverter::DistanceConverter.kilometers_to_yards(10)  # Retorna 10936.1

# Quilômetros para milhas náuticas
puts UnitConverter::DistanceConverter.kilometers_to_nautical_miles(10)  # Retorna 5.39957

Conversão de Peso/Massa:

# Quilogramas para Libras
UnitConverter::WeightConverter.kilograms_to_pounds(1)  # Retorna 2.20462

# Libras para Quilogramas
UnitConverter::WeightConverter.pounds_to_kilograms(1)  # Retorna 0.453592

# Quilogramas para Onças
UnitConverter::WeightConverter.kilograms_to_ounces(1)  # Retorna 35.274

# Onças para Quilogramas
UnitConverter::WeightConverter.ounces_to_kilograms(1)  # Retorna 0.0283495

# Libras para Onças
UnitConverter::WeightConverter.pounds_to_ounces(1)  # Retorna 16.0

# Onças para Libras
UnitConverter::WeightConverter.ounces_to_pounds(1)  # Retorna 0.0625

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