FROM opensuse:tumbleweed
RUN zypper --non-interactive in \
              libstdc++6-32bit \
              libgcc_s1-32bit \
              glibc-32bit \
              ffmpeg.i586 \
              libpulse0-32bit \
           && \
    zypper --non-interactive clean -a
