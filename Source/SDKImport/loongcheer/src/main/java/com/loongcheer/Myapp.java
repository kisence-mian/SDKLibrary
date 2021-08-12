package com.loongcheer;

import android.app.Application;


import com.loongcheer.appsflyersdk.init.AppsflyerInit;



public class Myapp extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        AppsflyerInit.getInstance().init(this, "kmTtqYBF8BUCjWhprBRPm8");

    }
}
