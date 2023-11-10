if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/igraj147/RDXRAJ_MUSIC_BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RDXRAJ_MUSIC_BOT
fi
cd /RDXRAJ_MUSIC_BOT
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
