package grailcrud

import grailscrud.User

class BootStrap {

    def init = { servletContext ->
        if (User.count() == 0) {
            new User(username: 'araf', fullname: 'Arefin', email: 'aa@aa.com', password: '123', age: 25).save()
            new User(username: 'abcd', fullname: 'ABCD', email: 'ab@cd.com', password: '123', age: 20).save()
        }
    }
    def destroy = {
    }
}
