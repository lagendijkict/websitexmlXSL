FROM python:3.8-alpine
EXPOSE 5000/tcp

#Install packages
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

#List all the files you need in the container directory
COPY app.py .
COPY helper_function.py .

RUN mkdir templates
#Copy the template files to their new template home
COPY templates/sample.xml templates/
COPY templates/sample.xsl templates/

CMD ["python", "./app.py"]