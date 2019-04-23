package com.lizubing.flutter;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.taobao.idlefish.flutterboost.FlutterBoostPlugin;
import com.taobao.idlefish.flutterboost.interfaces.IPlatform;
import java.util.Map;

/**
 * 类的作用
 *
 * @author: lizubing
 */
public class MyApplication extends Application {

  @Override
  public void onCreate() {
    super.onCreate();
    FlutterBoostPlugin.init(new IPlatform() {
      @Override
      public Application getApplication() {
        return MyApplication.this;
      }

      /**
       * get the main activity, this activity should always at the bottom of task stack.
       */
      @Override
      public Activity getMainActivity() {
        return MainActivity.sRef.get();
      }

      @Override
      public boolean isDebug() {
        return false;
      }

      /**
       * start a new activity from flutter page, you may need a activity router.
       */
      @Override
      public boolean startActivity(Context context, String url, int requestCode) {
        return PageRouter.openPageByUrl(context,url,requestCode);
      }

      @Override
      public Map getSettings() {
        return null;
      }
    });
  }
}
