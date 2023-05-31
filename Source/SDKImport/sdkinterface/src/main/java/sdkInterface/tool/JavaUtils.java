package sdkInterface.tool;

import android.util.Log;

import java.lang.reflect.Field;

import sdkInterface.SdkInterface;

public class JavaUtils
{
    public static void VerifyClass(String className)
    {
       try
       {
           SdkInterface.SendLog("JavaUtils VerifyClass class ->" + className + "<-");
           Class.forName(className);
           SdkInterface.SendLog("JavaUtils VerifyClass class ->" + className + "<- success!");
       }
       catch (ClassNotFoundException e)
       {
           try
           {
               //错误的名字
               if(e.toString().contains("Invalid name"))
               {
                   SdkInterface.SendLog("JavaUtils VerifyClass error " + e.toString());
               }
               else
               {
                   SdkInterface.SendLog("avaUtils VerifyClass NotFound " + e.toString());
                   String notFoundClassName = e.toString().split("ClassNotFoundException: ")[1];
                   notFoundClassName = notFoundClassName.replace("/",".");

                   SdkInterface.SendLog("VerifyClass notFoundClassName " + notFoundClassName);

                   //递归向下查找
                   if(!className.equals(notFoundClassName))
                   {
                       VerifyClass(notFoundClassName);
                   }
               }
           }
           catch (Exception e2)
           {
               SdkInterface.SendError("JavaUtils VerifyClass "+ e2.toString(),e2);
           }
       }
       catch (Exception e) {
           SdkInterface.SendError("JavaUtils VerifyClass "+ e.toString(),e);
        }
    }

    public static String VerifyRTable(String Rpath,String valuePath)
    {
        SdkInterface.SendLog("JavaUtils VerifyRTable Rpath ->" + Rpath + "<- valuePath ->" + valuePath + "<" );

        try
        {
            Class c =  Class.forName(Rpath);
            Field f_value =  c.getField(valuePath);

            Log.d("Unity","JavaUtils VerifyRTable Field fs_t " + f_value );

            Object r_obj =  f_value.get(c);

            Log.d("Unity","JavaUtils VerifyRTable Object r_obj " + r_obj );

            return r_obj.toString();
        }catch (Exception e)
        {
            SdkInterface.SendError("JavaUtils VerifyRTable Error: "+ e.toString(),e);
            return "";
        }
    }
}
