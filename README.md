# corenlp-docker Version 3.7 with Oracle's version of Java

Dockerfile for Stanford CoreNLP Server
---------

This Dockerfile builds the [Stanford CoreNLPServer](http://stanfordnlp.github.io/CoreNLP/corenlp-server.html) and exposes the endpoint on port 9000 by default. Requests are made as covered in the documentation.

To run:

docker run -p 9000:9000 --rm mooreap/corenlp

If you want it to run over a different port e.g. 9050

docker run -p 9050:9050 --rm mooreap/corenlp -port 9050

If you want to run on port 9050 with timeout of 50000 milliseconds

docker run -p 9050:9050 --rm mooreap/corenlp -port 9050 -timeout 50000
