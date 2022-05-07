FROM python

WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

ENV DB_URL=mysql://admin:phani_26@database-1.cszbnynw9m8q.ap-northeast-1.rds.amazonaws.com/aws

ENV ACCESS_KEY=AKIA4MC6LBIEAAONRTBF

ENV SECRET_KEY=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
#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ,"app.py" ]
