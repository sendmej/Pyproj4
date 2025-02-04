FROM python:3.7.3-stretch

## Step 1:
WORKDIR /pyproj

## Step 2:
COPY . app.py /pyproj/
COPY . model_data/boston_housing_prediction.joblib /pyproj/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch

CMD ["python", "app.py"] 
