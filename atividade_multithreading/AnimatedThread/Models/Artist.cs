﻿using System.Collections;

namespace AnimatedThread
{
    public class Artist
    {
        public Artist(int id, string name)
        {
            Id = id;
            Name = name;
        }

        public int Id { get; set; }
        public string Name { get; set; }
    }
}
