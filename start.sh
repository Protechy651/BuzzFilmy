if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Protechy651/BuzzFilmy/tree/TECH_VJ /AutoFilterAdvance
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /BuzzFilmy
fi
cd /BuzzFilmy
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
