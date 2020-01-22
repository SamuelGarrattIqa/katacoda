# Clone repo

Clone repo with Zalenium docker-compose setup in it

`git clone https://gitlab.com/samuel-garratt/ui_recording.git`

Move into that folder

`cd ui_recording`{{execute}}

# Run tests

`docker-compose -f docker-compose-demo.yml up --abort-on-container-exit --exit-code-from test`{{execute}}

