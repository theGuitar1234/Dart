void main() {
  int songHours = 2;
  int songMinutes = 10;
  int songSeconds = 59;

  if (songHours < 0 || songMinutes < 0 || songSeconds < 0) {
    print("Invalid Values, must be positive");
  } else if (songMinutes >= 60 || songSeconds >= 60) {
    print("Invalid Minute/Second range, must be less than 60");
  } else {
    int songDurationInSeconds = storeSongDurationInSeconds(songHours, songMinutes, songSeconds);
    print("For $songHours:$songMinutes:$songSeconds the duration in seconds is : $songDurationInSeconds seconds");
  }
}

int storeSongDurationInSeconds(int songHours, int songMinutes, int songSeconds) {
  return songHours*3600 + songMinutes*60 + songSeconds;
}
