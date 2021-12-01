# gitting-too-much
This is a challenge for the Hackvent 2021.

## Description
To celebrate Christmas even more the elves have setup a small website to help promote christmas on the internet.
It is currently under heavy development but they wanted to show it off anyhow.

Unfortunately they made a pretty silly error which threatens to future of their project.
Can you find it and retrieve the flag to help them?

## Vulnerability
This server exposes a git repo publicly and is therefor vulnerable to a source code leakage.

## How To Solve
1. Build and start the docker image
2. Download the .git folder from the server. Example: `wget --mirror -r http://localhost:8080/.git`
3. switch the branch to `feature/flag`
4. Read the `flag.html` file

## Make it harder
- Disable the autoindex for the .git folder
- Remove config file to reduce automated detections
- Remove HEAD file to reduce automated detection and force the user to create the HEAD file again
- Mess even more with the .git folder to make it harded
- Create fake php backend to confuse the attack that it could be an SQLi or something similar