url=https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
wget $url -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
conda init bash
git config --global user.email "philippe.henri.saade@gmail.com"
git config --global user.name "PhilSad"

git clone https://github.com/OpenTalker/SadTalker
cd SadTalker

conda create -n sadtalker python=3.8
conda activate sadtalker
pip install torch torchvision torchaudio
conda install ffmpeg
pip install -r requirements.txt
pip install TTS
apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
