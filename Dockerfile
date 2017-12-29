FROM node:9.3.0-alpine
LABEL author="Thomas Kleinendorst"

ENTRYPOINT node main.js

# --------------- BUILD CONTAINER ---------------
COPY dist dist/
COPY main.js main.js
# these dependancies are needed for running the app
# (note that the project is already build, so we don't run the package.json file
# to keep the image small
RUN npm install express
