[![Mayan EDMS 2.2](https://img.shields.io/badge/Mayan%20EDMS-2.2-brightgreen.svg)]() [![Docker Pulls](https://img.shields.io/docker/pulls/jamiemagee/mayan-edms.svg?maxAge=2592000)](https://hub.docker.com/r/jamiemagee/mayan-edms/) [![Docker Stars](https://img.shields.io/docker/stars/jamiemagee/mayan-edms.svg?maxAge=2592000)](https://hub.docker.com/r/jamiemagee/mayan-edms/) [![](https://images.microbadger.com/badges/image/jamiemagee/mayan-edms.svg)](https://microbadger.com/images/jamiemagee/mayan-edms "Get your own image badge on microbadger.com") [![license](https://img.shields.io/github/license/jamiemagee/docker-mayan-edms.svg?maxAge=2592000)]()

A Docker container for [Mayan EDMS](https://gitlab.com/mayan-edms/mayan-edms)

Setup
=====
1. Find the ISO 639-3 language codes for the languages you want to OCR. Wikipedia has a list [here](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
2. Create a folder on the host machine for the database, and documents to be persisted
3. Run the docker container, replacing the `OCR_LANGUAGES` variable with the language codes for the from step 1.
	
	`docker run -d --name="mayan" -v /path/on/host:/usr/src/mayan/mayan/media -p 8000:8000 -e OCR_LANGUAGES="eng dan" jamiemagee/mayan-edms`
 
