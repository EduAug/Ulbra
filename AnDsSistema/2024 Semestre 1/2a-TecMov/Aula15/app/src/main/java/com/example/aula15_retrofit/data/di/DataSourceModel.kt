package com.example.aula15_retrofit.data.di

import com.example.aula15_retrofit.data.datasources.CharacterDataSource
import com.example.aula15_retrofit.data.network.CharacterAPI
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object DataSourceModel {
    @Provides
    @Singleton
    fun providesDataSourceModule(
        api: CharacterAPI
    ): CharacterDataSource{
        return CharacterDataSource(api)
    }
}