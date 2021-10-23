#!/bin/bash
mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static
cp sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r templates/* tempdir/static
echo "From python"> tempdir/dockerfile
echo "RUN pip3 install flask">>tempdir/dockerfile
echo "COPY ./static /home/myapp/static/">>tempdir/dockerfile
echo "COPY sample_app.py /home/myapp/">>tempdir/dockerfile
echo "EXPOSE 8080">> tempdir/dockerfile
echo "CMD python3 /home/myapp/sample_app.py">>tempdir/dockerfile
cd tempdir
docker build -t sampleapp .
docker run -t -d - p 8080:8080 --name samplerunning sampleapp

