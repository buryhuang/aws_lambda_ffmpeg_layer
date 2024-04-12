rm -rf python
rm -f openai_lambda_layer_3_11.zip
pip3.11 install requests openai --platform manylinux2014_x86_64 --only-binary=:all: --target ./python
zip -r openai_lambda_layer_3_11.zip python
rm -rf python

rm -rf ffmpeg
rm -f ffmpeg_layer_x86.zip
mkdir -p ffmpeg/bin
wget https://github.com/ffbinaries/ffbinaries-prebuilt/releases/download/v6.1/ffprobe-6.1-linux-64.zip -O ffmpeg/bin/ffprobe-6.1-linux-64.zip
unzip ffmpeg/bin/ffprobe-6.1-linux-64.zip -d ffmpeg/bin
rm ffmpeg/bin/ffprobe-6.1-linux-64.zip
wget https://github.com/ffbinaries/ffbinaries-prebuilt/releases/download/v6.1/ffmpeg-6.1-linux-64.zip -O ffmpeg/bin/ffmpeg-6.1-linux-64.zip
unzip ffmpeg/bin/ffmpeg-6.1-linux-64.zip -d ffmpeg/bin
rm ffmpeg/bin/ffmpeg-6.1-linux-64.zip
cd ffmpeg && zip -r ../ffmpeg_layer_x86.zip bin
rm -rf ffmpeg

