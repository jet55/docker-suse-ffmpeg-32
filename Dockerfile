FROM opensuse:tumbleweed
RUN zypper -n ar -f -c http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/Essentials packman-essentials \
           && \
    zypper --non-interactive in \
              libstdc++6-32bit \
              libgcc_s1-32bit \
              glibc-32bit \
              ffmpeg-3.4.2-6.2.i586 \
              libpulse0-32bit \
           && \
    zypper --non-interactive clean -a
