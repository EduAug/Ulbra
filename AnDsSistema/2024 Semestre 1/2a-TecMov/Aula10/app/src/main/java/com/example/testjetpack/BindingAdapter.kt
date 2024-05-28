package com.example.testjetpack

import android.widget.ImageView
import androidx.databinding.BindingAdapter
import com.bumptech.glide.Glide

object BindingAdapter {
    @BindingAdapter("loadImage")
    @JvmStatic
    fun loadImage(view: ImageView, url: String) {
        Glide.with(view.context)
            .load(url)
            .centerCrop()
            .into(view)
    }
}