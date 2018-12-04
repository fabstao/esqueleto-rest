/*
*
* (C) 2018 Fabian Salamanca
* fabian@nuo.com.mx
* Sample REST API implementation
* using Go and MongoDB as backend
*
*/

package main

import (
	"net/http"

	"github.com/julienschmidt/httprouter"
	"gitlab.com/fabstao/esqueleto-rest/controllers"
	mgo "gopkg.in/mgo.v2"
)

func getSession(dbhost string, dbname string, dbuser string, dbpasswd string) *mgo.Session {
	// Connect to our local mongo
	s, err := mgo.Dial("mongodb://" + dbuser + ":" + dbpasswd + "@" + dbhost + "/" + dbname)

	// Check if connection error, is mongo running?
	if err != nil {
		panic(err)
	}
	return s
}

func main() {
	// Instantiate a new router
	dbhost := "localhost"
	dbuser := "myuser"
	dbpasswd := "passwd"
	dbname := "mynosql"
	r := httprouter.New()
	uc := controllers.NewUserController(getSession(dbhost, dbname, dbuser, dbpasswd))
	r.GET("/test", uc.TestAPI)
	r.GET("/user/:username", uc.GetUser)
	r.GET("/users", uc.GetAllUsers)
	r.POST("/user", uc.CreateUser)
	r.DELETE("/user/:id", uc.DeleteUser)
	http.ListenAndServe("localhost:3000", r)
}
