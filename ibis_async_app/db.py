import ibis


def get_connection():
    return ibis.sqlite.connect("db.sqlite")
