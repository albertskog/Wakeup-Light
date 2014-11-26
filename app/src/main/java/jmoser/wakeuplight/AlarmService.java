package jmoser.wakeuplight;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

/**
 * Created by jensmoser on 16/11/2014.
 */
public class AlarmService extends Service
{
    Alarm alarm = new Alarm();

    @Override
    public void onCreate()
    {
        Log.d("tst", "service: onCreate");
        super.onCreate();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId)
    {
        Log.d("tst", "service: onStartCommand");
        alarm.SetAlarm(AlarmService.this);
        return START_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent)
    {
        return null;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        alarm.CancelAlarm(this.getApplicationContext());
        Log.d("tst", "service: onDestroy");
    }
}
