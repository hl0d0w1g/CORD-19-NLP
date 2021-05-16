# Download the data
wget https://ai2-semanticscholar-cord-19.s3-us-west-2.amazonaws.com/historical_releases/cord-19_2021-04-26.tar.gz
# Unzip the file
tar -xf cord-19_2021-04-26.tar.gz

# Rename the data folder
mv 2021-04-26 data
# Remove the zip file
rm cord-19_2021-04-26.tar.gz

PWD=`pwd`
activate () {
    . $PWD/venv/bin/activate
}

# Create the virtual environment 
python3 -m venv venv
activate

# Install the dependencies
pip install -r requirements.txt
pip install --upgrade spacy
python -m spacy download en_core_web_md
python -m spacy download xx_sent_ud_sm
pip install --upgrade spacy_langdetect
