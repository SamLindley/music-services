package com.psandchill.repository;

import com.psandchill.models.Song;

import java.util.List;

public interface SongRepository {
    List<Song> getAllSongs();
}
