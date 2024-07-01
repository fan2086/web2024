from aiohttp import web # type: ignore
from serv.config import web_routes

import serv.grade
import serv.student
import serv.course
import serv.select
import serv.entry

app = web.Application()
serv.dblock.setup(app,
                  dsn="host=localhost dbname=examdb user=examdb password=pass")

app.add_routes(web_routes)

if __name__ == "__main__":
    web.run_app(app, port=5000)
