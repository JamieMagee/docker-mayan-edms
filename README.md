Mayan EDMS Docker Container
===========================
[![Docker Pulls](https://img.shields.io/docker/pulls/jamiemagee/mayan-edms.svg?maxAge=2592000)]()
[![license](https://img.shields.io/github/license/mashape/apistatus.svg?maxAge=2592000)]()

A Docker container for [Mayan EDMS](gitlab.com/mayan-edms/mayan-edms)

Setup
=====
1. Find the ISO 639-3 language codes for the languages you want to OCR. Wikipedia has a list [here](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
2. Create a folder on the host machine for the database, and documents to be persisted
3. Run the docker container, replacing the `OCR_LANGUAGES` variable with the language codes for the from step 1.
	
	`docker run -d --name="mayan" -v /path/on/host:/usr/src/mayan/mayan/media -p 8000:8000 -e OCR_LANGUAGES="eng dan" jamiemagee/mayan-edms`

4. If this is the first time you've run Mayan EDMS, create an admin account by running

	`docker exec -it mayan ./manage.py createautoadmin`
