# UnitConverter

# UnitConverter Gem

`UnitConverter` é uma gem simples para conversões de unidades entre várias categorias, como temperatura, peso/massa, distância, volume e mais. Este projeto tem como objetivo fornecer uma maneira fácil de fazer essas conversões em Ruby.

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

Conversão de Volume:

# Litros para Galões
UnitConverter::VolumeConverter.liters_to_gallons(1)  # Retorna 0.264172
UnitConverter::VolumeConverter.gallons_to_liters(1)  # Retorna 3.78541

# Litros para Onças Fluidas
UnitConverter::VolumeConverter.liters_to_ounces(1)  # Retorna 33.814
UnitConverter::VolumeConverter.ounces_to_liters(1)  # Retorna 0.0295735

# Litros para Colheres de Sopa
UnitConverter::VolumeConverter.liters_to_tablespoons(1)  # Retorna 67.628
UnitConverter::VolumeConverter.tablespoons_to_liters(1)  # Retorna 0.0147868

# Mililitros para Colheres de Sopa
UnitConverter::VolumeConverter.ml_to_tablespoons(1)  # Retorna 0.067628
UnitConverter::VolumeConverter.tablespoons_to_ml(1)  # Retorna 14.7868

# Litros para Xícaras
UnitConverter::VolumeConverter.liters_to_cups(1)  # Retorna 4.22675
UnitConverter::VolumeConverter.cups_to_liters(1)  # Retorna 0.236588

# Mililitros para Xícaras
UnitConverter::VolumeConverter.ml_to_cups(1)  # Retorna 0.00422675
UnitConverter::VolumeConverter.cups_to_ml(1)  # Retorna 236.588

# Galões para Onças Fluidas
UnitConverter::VolumeConverter.gallons_to_ounces(1)  # Retorna 128
UnitConverter::VolumeConverter.ounces_to_gallons(1)  # Retorna 0.0078125

# Galões para Colheres de Sopa
UnitConverter::VolumeConverter.gallons_to_tablespoons(1)  # Retorna 256
UnitConverter::VolumeConverter.tablespoons_to_gallons(1)  # Retorna 0.00390625

# Galões para Xícaras
UnitConverter::VolumeConverter.gallons_to_cups(1)  # Retorna 16
UnitConverter::VolumeConverter.cups_to_gallons(1)  # Retorna 0.0625


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