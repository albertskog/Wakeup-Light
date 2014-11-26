package jmoser.wakeuplight;

/**
 * Created by jensmoser on 16/11/2014.
 */

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ToggleButton;

import org.eclipse.paho.client.mqttv3.MqttException;

public class MqttFragment extends Fragment {

    WakeUpLightClient wakeUpLightClient = new WakeUpLightClient();

    public MqttFragment() {

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,

                             Bundle savedInstanceState) {

        getActivity().startService(new Intent(getActivity(),AlarmService.class));
        View rootView = inflater.inflate(R.layout.fragment_main, container, false);
        Button lightsOnOff = (Button) rootView.findViewById(R.id.onOffButton);

        try {
            wakeUpLightClient.connectMqttClient();
        } catch (MqttException e) {
            e.printStackTrace();
        }

        lightsOnOff.setOnClickListener(new View.OnClickListener()
        {
            @Override
            public void onClick(View view)
            {
                boolean on = ((ToggleButton) view).isChecked();
                wakeUpLightClient.toggleOnOffLight(on);
            }
        });

        return rootView;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        try {
            wakeUpLightClient.disconnectMqttClient();
        } catch (MqttException e) {
            e.printStackTrace();
        }
        getActivity().stopService(new Intent(getActivity(), AlarmService.class));
    }

}