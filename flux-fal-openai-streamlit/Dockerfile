FROM python:3.12
RUN git clone https://github.com/russmckendrick/flux-fal-openai-streamlit.git
WORKDIR /flux-fal-openai-streamlit
RUN pip install -r requirements.txt
CMD ["streamlit", "run", "app.py"]
