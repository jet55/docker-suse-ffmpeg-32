FROM opensuse:tumbleweed
RUN zypper -n ar -G -f -c http://packman.inode.at/suse/openSUSE_Tumbleweed/Essentials packman-essentials \
           && \
    zypper --non-interactive in \
              libstdc++6-32bit \
              libgcc_s1-32bit \
              glibc-32bit \
              ffmpeg-4-4.0.2-5.1.i586 \
              libpulse0-32bit \
              wireshark \
           && \
    zypper --non-interactive clean -a
