if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clonehttps://github.com/NIHUU/Bot-V3.git /Bot-V3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Bot-V3
fi
cd /Bot-V3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
