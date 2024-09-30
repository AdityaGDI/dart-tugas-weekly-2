class TemperatureConverter {
  double celsius;

  TemperatureConverter(this.celsius);

  double toReaumur() {
    return celsius * 0.8;
  }

  double toFahrenheit() {
    return (celsius * 9 / 5) + 32;
  }

  double toKelvin() {
    return celsius + 273.15;
  }
}
