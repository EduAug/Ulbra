package com.example.testjetpack.di

import com.example.testjetpack.data.datasources.productDataSource
import com.example.testjetpack.data.repository.ProductRepository
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object RepositoryModule {

    @Provides
    @Singleton
    fun providesProductRepository(productDataSource: productDataSource): ProductRepository{
        return ProductRepository(productDataSource)
    }
}