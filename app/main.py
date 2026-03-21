from fastapi import FastAPI
from app.user_routes import router as user_router
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

app.include_router(user_router)
app.add_middleware(
    CORSMiddleware,
    allow_origins=['*'],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
