package com.facebook.orca;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class NuiActivity extends Activity {

    private static String token = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        LinearLayout main = new LinearLayout(this);
        setContentView(main);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);

        TextView token_view = new TextView(this);
        token_view.setLayoutParams(lp);

        Button copy_btn = new Button(this);
        copy_btn.setLayoutParams(lp);
        copy_btn.setText("Copy");
        copy_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                copyToken();
            }
        });

        Button login_btn = new Button(this);
        login_btn.setLayoutParams(lp);
        login_btn.setText("Login");
        login_btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(),
                        com.facebook.orca.auth.StartScreenActivity.class);
                startActivity(intent);
            }
        });

        main.setOrientation(LinearLayout.VERTICAL);
        main.addView(token_view);
        main.addView(login_btn);
        main.addView(copy_btn);

        SharedPreferences preferences = getSharedPreferences("com.facebook.orca_preferences", MODE_PRIVATE);

        //preferences.edit().putString("/auth/user_data/fb_token", "test").commit();
        token = preferences.getString("/auth/user_data/fb_token", "cannot find token!");
        token_view.setText(token);

    }

    public void copyToken() {
        setClipboard(this, token);
    }

    private void setClipboard(Context context, String text) {
        if(android.os.Build.VERSION.SDK_INT < android.os.Build.VERSION_CODES.HONEYCOMB) {
            android.text.ClipboardManager clipboard = (android.text.ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
            clipboard.setText(text);
        } else {
            android.content.ClipboardManager clipboard = (android.content.ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
            android.content.ClipData clip = android.content.ClipData.newPlainText("Copied Text", text);
            clipboard.setPrimaryClip(clip);
        }
    }
}
