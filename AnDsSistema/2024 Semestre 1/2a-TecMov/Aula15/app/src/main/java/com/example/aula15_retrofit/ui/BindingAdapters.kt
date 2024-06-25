package com.example.aula15_retrofit.ui

import android.widget.ImageView
import androidx.databinding.BindingAdapter
import com.bumptech.glide.Glide

object BindingAdapters {
    @BindingAdapter("loadImage")
    @JvmStatic
    fun loadImage(view: ImageView, url: String){
        Glide.with(view.context)
            .load(url)
            .centerCrop()
            .into(view)
    }
}