package com.example.firstviewsempty

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView

class EnviaEmailActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_envia_email)

        val etEmail = findViewById<EditText>(R.id.etEmail)
        val etDescricao = findViewById<EditText>(R.id.etDescricao)
        val etAssunto = findViewById<EditText>(R.id.etAssunto)

        val enviarButton = findViewById<Button>(R.id.buttonSend)

        enviarButton.setOnClickListener {
            val intent = Intent().apply{
                action = Intent.ACTION_SEND
                type = "text/plain"
                putExtra(Intent.EXTRA_EMAIL, arrayOf(etEmail.text.toString()))
                putExtra(Intent.EXTRA_SUBJECT, etAssunto.text.toString())
                putExtra(Intent.EXTRA_TEXT, etDescricao.text.toString())
            }

            startActivity(intent)
        }
    }
}