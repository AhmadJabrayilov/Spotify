CREATE DATABASE Spotify
USE Spotify

CREATE TABLE Artists(
id int primary key identity,
[Name] varchar(50),
[Surname] varchar(50)
)

CREATE TABLE Albums(
Id int primary key identity,
[Name] varchar(50),
MusicCount int,
ArtistId int Foreign key references Artists(id)
)



CREATE TABLE Musics(
Id int primary key identity,
[Name] varchar(50),
TotalSecunds int ,
ListenerCount int,
AlbumId  int Foreign key references Albums(id),
ArtistId int Foreign key references Artists(id)
)
