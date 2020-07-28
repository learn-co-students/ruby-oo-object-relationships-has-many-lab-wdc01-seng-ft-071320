require_relative "./artist.rb"
require_relative "./song.rb"
require "pry"

hello = Song.new("Hello")

ring_of_fire = Song.new("ring of fire")

adelle = Artist.new("Adelle")


adelle.add_song(hello)
adelle.add_song(ring_of_fire)

print adelle.songs
# p hello.artist



