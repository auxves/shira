{ python3Packages
, ffmpeg
}:

python3Packages.buildPythonApplication {
  name = "shiradl";
  pyproject = true;

  src = builtins.path { path = ./.; };

  build-system = with python3Packages; [
    flit-core
  ];

  dependencies = with python3Packages; [
    ffmpeg

    click
    yt-dlp
    ytmusicapi
    mediafile
    pillow
    requests-cache
    python-dateutil
  ];
}
