package sdkInterface;

import org.json.JSONObject;

/**
 * Created by GaiKai on 2018/4/12.
 */

public interface IOther
{
   void Other(JSONObject json);

//   void OtherCallBackInt(JSONObject json) {}
//
//   void OtherCallBackFloat(JSONObject json);
//
//   void OtherCallBackString(JSONObject json);

   String[] GetFunctionName();

   
}
