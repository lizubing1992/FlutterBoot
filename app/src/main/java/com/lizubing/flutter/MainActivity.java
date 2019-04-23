package com.lizubing.flutter;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class MainActivity extends AppCompatActivity {

  public static WeakReference<MainActivity> sRef;
  private TextView mOpenNative;
  private TextView mOpenFlutter;
  private TextView mOpenFlutterFragment;

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    sRef = new WeakReference<>(this);
    setContentView(R.layout.native_page);

    mOpenNative = findViewById(R.id.open_native);
    mOpenFlutter = findViewById(R.id.open_flutter);
    mOpenFlutterFragment = findViewById(R.id.open_flutter_fragment);
    setListener();
  }

  private void setListener() {

    mOpenNative.setOnClickListener(new OnClickListener() {
      @Override
      public void onClick(View v) {
        PageRouter.openPageByUrl(MainActivity.this, PageRouter.NATIVE_PAGE_URL);
      }
    });
    mOpenFlutter.setOnClickListener(new OnClickListener() {
      @Override
      public void onClick(View v) {
        PageRouter.openPageByUrl(MainActivity.this, PageRouter.FLUTTER_PAGE_URL);
      }
    });
    mOpenFlutterFragment.setOnClickListener(new OnClickListener() {
      @Override
      public void onClick(View v) {
        PageRouter.openPageByUrl(MainActivity.this, PageRouter.FLUTTER_FRAGMENT_PAGE_URL);
      }
    });
  }


  @Override
  protected void onDestroy() {
    super.onDestroy();
    sRef.clear();
    sRef = null;
  }
}
