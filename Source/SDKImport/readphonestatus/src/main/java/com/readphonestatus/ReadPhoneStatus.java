package com.readphonestatus;

import org.json.JSONObject;

import sdkInterface.SDKBase;
import sdkInterface.IOther;

public class ReadPhoneStatus extends SDKBase implements IOther
{
    @Override
    public void Other(JSONObject json) {

    }

    @Override
    public String[] GetFunctionName() {
        return new String[0];
    }
}
