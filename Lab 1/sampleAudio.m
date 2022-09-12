
myRec = audiorecorder(48000, 8, 1);
record(myRec);
pause(5);
stop(myRec);
play(myRec);
audioData = getaudiodata(myRec);
plot(audioData);
myPlr = audioplayer(myRec);