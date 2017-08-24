var humidity = mqtt.connect(options);
console.log("Kev Jen Bedroom Temp Sensor Connected to MQTT broker");
client.subscribe('/home/temp/kevjenbedroom');
humidity.subscribe('/home/humidity/kevjenbedroom');
client.on('message', function(topic, message) {
  console.log(parseFloat(message));
  // message is Buffer
  data = JSON.parse(message);
  if (data === null) {return null}
  if (data ==='NaN') {return null}
  if(topic == '/home/temp/kevjenbedroom') {
    SENSOR.currentTemperature = parseFloat(data);
  } else if (topic == '/home/humidity/kevjenbedroom') {
    SENSOR.currentHumidity = parseFloat(data);
  }
});
