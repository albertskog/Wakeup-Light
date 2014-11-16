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

public class MqttFragment extends Fragment {

    public MqttFragment() {
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View rootView = inflater.inflate(R.layout.fragment_main, container, false);

        getActivity().startService(new Intent(getActivity(),AlarmService.class));

        return rootView;
    }

}