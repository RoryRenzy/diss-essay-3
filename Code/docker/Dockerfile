FROM tiagopeixoto/graph-tool

USER root

# Install system packages via pacman
RUN pacman -Syu --noconfirm && \
    pacman -S wget firefox python-pip --noconfirm

# Install geckodriver
RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.33.0/geckodriver-v0.33.0-linux64.tar.gz && \
    tar -xvf geckodriver-v0.33.0-linux64.tar.gz -C /usr/local/bin/ && \
    rm geckodriver-v0.33.0-linux64.tar.gz

# Install Python packages in smaller chunks to isolate issues
RUN pip install --upgrade pip
RUN pip install jupyter pandas matplotlib seaborn networkx
RUN pip install gensim soupsieve beautifulsoup4 nltk statsmodels selenium
RUN pip install spacy booknlp

# Install spaCy model manually
RUN wget https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-3.6.0/en_core_web_sm-3.6.0.tar.gz && \
    tar -xf en_core_web_sm-3.6.0.tar.gz && \
    rm en_core_web_sm-3.6.0.tar.gz && \
    cd en_core_web_sm-3.6.0 && \
    python setup.py install && \
    cd .. && rm -rf en_core_web_sm-3.6.0

# Download NLTK data
USER user
RUN python -c "import nltk; nltk.download('all')"

# Set working directory and expose Jupyter port
WORKDIR /workspace
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
