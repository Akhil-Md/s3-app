FROM python

WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

ENV mysql://admin:Akheel123@mysqldb-1.cvbnn80snkif.ap-south-1.rds.amazonaws.com/aws

ENV ACCESS_KEY=AKIA2TCWO3UYUBVOAV7V

ENV SECRET_KEY=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
#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ,"app.py" ]
