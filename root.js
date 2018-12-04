db.createUser({
  user: "root",
  pwd: "supersecret",
  customData: { "level": "god" },
  roles: [
	  { role: "userAdminAnyDatabase", db: "admin" }
  ]
})
