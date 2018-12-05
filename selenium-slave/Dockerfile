FROM jenkins/ssh-slave

COPY sources.list /etc/apt/sources.list
COPY geckodriver /usr/local/bin/
COPY get-pip.py /tmp/

COPY firefox-63.0.3.tar.bz2 /tmp/
RUN cd /usr/share && \
	    tar xjvf /tmp/firefox-63.0.3.tar.bz2 && \
	    ln -s /usr/share/firefox/firefox /usr/local/bin/ && \
	    rm /tmp/firefox-63.0.3.tar.bz2

RUN apt update && \
	    apt install -y libdbus-glib-1-2

RUN echo '[global]' >> /etc/pip.conf && \
	    echo 'index-url = https://mirrors.aliyun.com/pypi/simple/' >> /etc/pip.conf && \
	    python /tmp/get-pip.py && \
	    pip install robotframework robotframework-selenium2library selenium && \
	    rm /tmp/get-pip.py

RUN echo "export MOZ_HEADLESS=1" >> /etc/bash.bashrc

