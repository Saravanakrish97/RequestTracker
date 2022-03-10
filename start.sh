if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Saravanakrish97/RequestTraker.git /RequestTraker
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RequestTraker
fi
cd /RequestTraker
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
