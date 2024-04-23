package com.example.firstviewsempty

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import org.w3c.dom.Text

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        var isHidden : Boolean = true;
        val buttonyt = findViewById<Button>(R.id.buttonyt)
        val buttonmail = findViewById<Button>(R.id.buttongmail)

        findViewById<Button>(R.id.button)
            .setOnClickListener {
                Toast.makeText(this,"BLIP", Toast.LENGTH_SHORT).show()
                if(isHidden) {
                    findViewById<TextView>(R.id.centerBar).text = "Hello, World!\nFrom Kotlin!"
                    isHidden = false;
                }else if(!isHidden) {
                    findViewById<TextView>(R.id.centerBar).text = "Hello, World!"
                    isHidden = true;
                }
            }

        buttonyt.setOnClickListener {
            val intent = Intent(Intent.ACTION_MAIN)
            intent.`package` = "com.google.android.youtube"
            startActivity(intent)
        }

        buttonmail.setOnClickListener {
            val intent = Intent(this, EnviaEmailActivity::class.java)
            startActivity(intent)
        }

    }
    override fun onPause() {
        super.onPause()
        Toast.makeText(applicationContext, "STOP!", Toast.LENGTH_SHORT).show()

    }

    override fun onResume() {
        super.onResume()
        Toast.makeText(this, "Hammer time", Toast.LENGTH_SHORT).show()
    }

}