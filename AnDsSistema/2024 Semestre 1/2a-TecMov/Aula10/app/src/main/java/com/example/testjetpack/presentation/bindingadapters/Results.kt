package com.example.testjetpack.presentation.bindingadapters

import java.lang.Exception

sealed class Results <out T>{
    data object Loading: Results<Nothing>()
    data class Success<out T>(val data: T):Results<T>()
    data class Error(val e: Exception): Results<Nothing>()
}