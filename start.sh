if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Saravanakrish97/RequestTracker.git /RequestTracker
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RequestTracker
fi
cd /RequestTracker
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
