package com.example.testjetpack.di

import com.example.testjetpack.data.database.ProductDao
import com.example.testjetpack.data.datasources.productDataSource
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object DataSourceModule {

    @Provides
    @Singleton
    fun providesDataSource(productDao: ProductDao): productDataSource{
        return productDataSource(productDao)
    }
}