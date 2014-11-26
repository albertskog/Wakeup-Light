package jmoser.wakeuplight;

import android.util.Log;

import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttMessage;
import org.eclipse.paho.client.mqttv3.MqttSecurityException;
import org.eclipse.paho.client.mqttv3.persist.MemoryPersistence;

import java.util.Random;

/**
 * Created by jensmoser on 22/11/2014.
 */
public class WakeUpLightClient {

    private static final int MAX_LIGHT_INTENSITY = 999;
    private static final int MIN_LIGHT_INTENSITY = 0;
    final String broker = "tcp://192.168.1.112:1883";
    final String clientId = "WakeUpLightAndroid";
    final int qos = 2;
    final MemoryPersistence persistence = new MemoryPersistence();
    final String [] rgbArray = {"r", "g", "b"};
    MqttMessage message = new MqttMessage();
    org.eclipse.paho.client.mqttv3.MqttClient sampleClient;
    MqttConnectOptions connOpts;

    public WakeUpLightClient() {
        try {
            connectMqttClient();
        } catch (MqttSecurityException e) {
            e.printStackTrace();
        } catch (MqttException e) {
            e.printStackTrace();
        }
    }

    public void connectMqttClient() throws MqttException {
        sampleClient = new org.eclipse.paho.client.mqttv3.MqttClient(broker, clientId, persistence);
        connOpts = new MqttConnectOptions();
        connOpts.setCleanSession(true);
        message.setQos(qos);
        sampleClient.connect(connOpts);
    }


    public void publishMqttMessage() {
        int rgbRandomInt = randInt(0, 2);
        String content = randInt(0, MAX_LIGHT_INTENSITY) + "";
        String topic = "lights/"+rgbArray[rgbRandomInt];
        try {
            publishMessage(content, topic);
        } catch (MqttException me) {
            me.printStackTrace();
        }
    }

    public static int randInt(int min, int max) {
        Random rand = new Random();
        int randomNum = rand.nextInt((max - min) + 1) + min;
        return randomNum;
    }

    public void toggleOnOffLight(boolean toOn) {
        int content = MIN_LIGHT_INTENSITY;
        if(toOn) {
            content = MAX_LIGHT_INTENSITY;
        }
        for (int i = 0; i < rgbArray.length; i++)
        {
            String topic = "lights/"+rgbArray[i];
            try {
                publishMessage(content, topic);
            } catch (MqttException me) {
                me.printStackTrace();
            }
        }
    }

    private void publishMessage(int contentAsInt, String topic) throws MqttException {
        String content = contentAsInt+"";
        message.setPayload(content.getBytes());
        sampleClient.publish(topic, message);
    }

    private void publishMessage(String contentAsString, String topic) throws MqttException {
        message.setPayload(contentAsString.getBytes());
        sampleClient.publish(topic, message);
    }

    public void disconnectMqttClient() throws MqttException {
        sampleClient.disconnect();
    }
}
