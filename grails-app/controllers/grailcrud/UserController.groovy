package grailcrud

import grailscrud.User
import groovy.sql.Sql

class UserController {
    def dataSource

    def form() {
    }

    def save() {
        def user = new User(params)
        user.save()
        redirect(action: "index")
    }
    def index() {
        def users = User.list()
        [users:users]
    }

    def edit () {
        Sql sql = new Sql(dataSource)
        def results = sql.rows("SELECT * from user where id ='" + params.id + "' ")
        return [results: results]
    }

    def flush() {
        Sql sql = new Sql(dataSource)
        sql.executeUpdate("delete from user where id ='" + params.id + "' ")
        redirect(action:"index")
    }

    def update() {
        Sql sql = new Sql(dataSource)
        sql.executeUpdate("UPDATE USER SET username ='" + params.username + "', fullname ='" + params.fullname + "', " +
                "email ='" + params.email + "', password ='" + params.password + "', age ='" + params.age + "' " +
                "WHERE id ='" + params.id + "'")
        redirect(action:"index")
    }
}
