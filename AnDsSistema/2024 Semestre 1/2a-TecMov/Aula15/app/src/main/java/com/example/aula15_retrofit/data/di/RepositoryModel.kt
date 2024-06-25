package com.example.aula15_retrofit.data.di

import com.example.aula15_retrofit.data.datasources.CharacterDataSource
import com.example.aula15_retrofit.data.repositories.CharacterRepository
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object RepositoryModel {
    @Provides
    @Singleton
    fun provideCharactersRepository(
        characterDataSource: CharacterDataSource
    ): CharacterRepository{
        return CharacterRepository(characterDataSource)
    }
}