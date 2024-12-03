#!/bin/bash

MPD_VERSION="v0.23.16"

echo "##### Install mpd #####"
sudo apt update
sudo apt upgrade -y
sudo apt install -y \
	git \
	meson \
	g++ \
	pkgconf \
	cmake \
	mpc \
  	libfmt-dev \
  	libpcre2-dev \
  	libmad0-dev libmpg123-dev libid3tag0-dev \
  	libflac-dev libvorbis-dev libopus-dev libogg-dev \
  	libadplug-dev libaudiofile-dev libsndfile1-dev libfaad-dev \
  	libfluidsynth-dev libgme-dev libmikmod-dev libmodplug-dev \
  	libmpcdec-dev libwavpack-dev libwildmidi-dev \
  	libsidplay2-dev libsidutils-dev libresid-builder-dev \
  	libavcodec-dev libavformat-dev \
  	libmp3lame-dev libtwolame-dev libshine-dev \
  	libsamplerate0-dev libsoxr-dev \
  	libbz2-dev libcdio-paranoia-dev libiso9660-dev libmms-dev \
  	libzzip-dev \
  	libcurl4-gnutls-dev libyajl-dev libexpat1-dev \
  	libasound2-dev libao-dev libjack-jackd2-dev libopenal-dev \
  	libpulse-dev libshout3-dev \
  	libsndio-dev \
  	libmpdclient-dev \
  	libnfs-dev \
  	libupnp-dev \
  	libavahi-client-dev \
  	libsqlite3-dev \
  	libsystemd-dev \
  	libgtest-dev \
  	libicu-dev \
  	libchromaprint-dev \
  	libgcrypt20-dev \
  	libsystemd-dev \
  	libpipewire-0.3-dev

git clone https://github.com/MusicPlayerDaemon/MPD -b $MPD_VERSION
cd MPD

meson setup . output/release --buildtype=debugoptimized -Db_ndebug=true
ninja -C output/release
ninja -C output/release install

echo "MPD has been installed."
echo "You should finalize mpd.conf and run"
echo "sudo systemctl daemon-reload"
echo "sudo systemctl enable mpd"
