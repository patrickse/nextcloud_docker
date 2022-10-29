# Nextcloud Container with Samba and Postgres 14 Client

While setting up a new instance of Nextcloud, I've stumbled upon the Nextcloud Backup App. This should be able to Backup the whole instance to an external storage. My intend is to store everything on an SMB drive exposed by my OMV.

For whatever reason the default Docker container does not contain smbclient and pgdump 14. I've created a Dockerfile containing these missing parts.. little drawback is.. it pulls in a lot of dependencies...

Build with `docker build -t patrickse/nextcloud:25 .` and run it like the normal nextcloud container.
