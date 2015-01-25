import paho.mqtt.publish as publish

publish.single("wakeup/state", '{"state":"start"}', hostname="localhost")