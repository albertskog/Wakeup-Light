import paho.mqtt.publish as publish

publish.single("wakeup/state", '{"state":"start"}', hostname="192.168.1.112")