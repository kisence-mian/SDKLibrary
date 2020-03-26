package com.okjoy;

import com.JoyFramework.common.JoyApplication;

public class OkJoyApplication extends JoyApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
    }


    private static OkJoyApplication instance;

    public static  OkJoyApplication GetInstance()
    {
        if(instance!= null)
        {
            instance = new OkJoyApplication();
        }
        return instance;
    }

    public void Init()
    {

    }

    public void Login()
    {

    }

    public void Pay()
    {

    }




}
