FROM kalilinux/kali-rolling

# RUN echo "deb http://mirror1.ku.ac.th/kali/ kali-rolling main contrib non-free > /etc/apt/sources.list" \
#     && echo "deb-src http://mirror1.ku.ac.th/kali/ kali-rolling main contrib non-free >> /etc/apt/sources.list"
RUN apt -y update \
    && apt -y upgrade \
    && apt -y install kali-tools-web \
    && apt -y install kali-tools-information-gathering \
    && apt -y install kali-tools-database \
    && apt -y kali-tools-passwords \
    && apt -y kali-tools-social-engineering \
    && apt -y kali-tools-sniffing-spoofing \
    && apt -y kali-tools-post-exploitation \
    && apt -y kali-tools-reporting \
    && apt -y install vim \
    && rm -r /var/lib/apt/lists/*

WORKDIR /localshared
VOLUME [ "/localshared" ]
#CMD ["alias ll='ls -lah'"]