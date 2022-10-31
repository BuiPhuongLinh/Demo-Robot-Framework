package com.example.myapplication

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.example.myapplication.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.tvClickResult.setOnClickListener {
            val result = binding.edtFirstNumber.text.toString()
                .toInt() + binding.edtSecondNumber.text.toString().toInt()
            binding.tvResult.text = result.toString()
        }


    }

}