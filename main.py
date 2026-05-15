import os

from fastapi import FastAPI


GCP_PROJECT_ID = os.getenv("GCP_PROJECT_ID")
INPUT_DATASET = os.getenv("INPUT_DATASET")
OUTPUT_DATASET = os.getenv("OUTPUT_DATASET")
API_KEY = os.getenv("API_KEY", "Not found in environment variables")

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}

# Non sensitive environment variables injected at deployment time 
@app.get("/display/env-variables")
async def display_env_variables():
    return {"message": f"INPUT_DATASET: {INPUT_DATASET}, OUTPUT_DATASET: {OUTPUT_DATASET}"}

# Sensitive environment variable injected at deployment time from Secret Manager
@app.get("/display/secrets")
async def display_secrets():
    return {"message": f"API_KEY: {API_KEY}"}