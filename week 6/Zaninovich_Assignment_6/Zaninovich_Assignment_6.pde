import ddf.minim.*; //imports from minim library
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

float r=130;


Minim minim;

AudioPlayer song;

BeatDetect beat;

void setup(){
  size(600,600);
  colorMode(HSB);
  minim=new Minim(this);
  song=minim.loadFile("Better Days.mp3", 1024);
  song.loop();
  
  beat=new BeatDetect();
  beat.setSensitivity(70);
  
}

void draw(){
  background(0);
  beat.detect(song.mix);
  
  if(beat.isOnset()){
    r=130;
  }
  noStroke();
  fill(random(40,280),random(70,270), random(60,265));
  ellipse(width/2,height/2, r,r);
  r*=0.65; 
  
}
