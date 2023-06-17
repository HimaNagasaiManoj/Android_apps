//xml//


<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout
    xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    tools:context=".MainActivity">
    <!--text view for heading-->
    <!-- activity_login.xml -->
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
        android:gravity="center">

        <EditText
            android:id="@+id/Username"
            android:layout_width="290dp"
            android:layout_height="90dp"
            android:hint="Username"
            android:inputType="text" />

        <EditText
            android:id="@+id/Password"
            android:layout_width="291dp"
            android:layout_height="81dp"
            android:hint="Password"
            android:inputType="textPassword" />

        <Button
            android:id="@+id/Login"
            android:layout_width="208dp"
            android:layout_height="67dp"
            android:text="Login" />

    </LinearLayout>


</RelativeLayout>

----------------------------------------------------------------------------------------------------------------------------------------------------------------
//java//

package com.example.login;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
public class MainActivity extends AppCompatActivity {

    private EditText Username;
    private EditText Password;
    private Button Login;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Username = findViewById(R.id.Username);
        Password = findViewById(R.id.Password);
        Login = findViewById(R.id.Login);

        Login.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String username = Username.getText().toString();
                String password = Password.getText().toString();

                if (isValidCredentials(username, password)) {
                    // Successful login, navigate to main activity
                    Intent intent = new Intent(MainActivity.this, MainActivity.class);
                    startActivity(intent);
                    finish();
                    Toast.makeText(MainActivity.this,"Logged Successfully",Toast.LENGTH_SHORT).show();

                } else {
                    // Invalid credentials, show error message
                    Toast.makeText(MainActivity.this, "Invalid username or password", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
    private boolean isValidCredentials(String username, String password) {
        return username.equals("Username") && password.equals("Password");
    }
}
