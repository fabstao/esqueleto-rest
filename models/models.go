package models

import "gopkg.in/mgo.v2/bson"

// User :
type User struct {
	Id       bson.ObjectId `json:"id" bson:"_id"`
	Username string        `json:"username"`
	Passwd   string        `json:"passwd"`
	Role     string        `json:"role"`
}

// TestA :
type TestA struct {
	Name string `json:"name"`
	Msg  string `json:"msg"`
}
