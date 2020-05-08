$songArtist=$Args[0]
$songTitle=$Args[1]
Write-Output @"
Playing:
${songArtist}
${songTitle}
"@ > ./nowplaying.txt