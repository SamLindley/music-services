package com.psandchill;

import com.psandchill.repository.SongRepository;
import com.psandchill.repository.SongRepositoryDB;

public class Program {
    public static void main(String[] args) {
        SongRepository songRepository = new SongRepositoryDB();
        songRepository.getAllSongs();

    }
}
