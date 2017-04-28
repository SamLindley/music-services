package com.psandchill.resources;

import com.psandchill.models.Song;
import com.psandchill.repository.SongRepository;
import com.psandchill.repository.SongRepositoryDB;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("songs")
public class SongResource {

    SongRepository songRepository = new SongRepositoryDB();

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Song> songs(){
        return songRepository.getAllSongs();
    }
}
