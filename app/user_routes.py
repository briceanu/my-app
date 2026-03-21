from fastapi import APIRouter


router = APIRouter(prefix='/user')


@router.get('/signin')
async def signin_user() -> str:
    return 'hello user you are signed in'
