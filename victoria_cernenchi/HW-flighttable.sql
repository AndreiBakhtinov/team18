https://dbdiagram.io/d/Tickets-Sales-657f65be56d8064ca0315abc


Table passagers {
  passager_id int
  created_at timestamp
  full_name varchar(128)
  passport_num int
  email varchar(64)
  telefon int
  status varchar(64)
  is_blocked bool
}
Table flights{
  flight_id int
  passager_id int
  created_at timestamp
  airline_id int
  dep_airport_id int
  arr_airport_id int
  dep_time timestamp
  arr_time timestamp
  seat_num int
  is_available vool
}
Table seats{
  seat_num int
  passager_id int
  flight_id int
  is_booked bool
}
Table tickets {
  ticket_id int
  passager_id int
  flight_id int
  seat_num int
  created_at timestamp
  status varchar(64)
}
Table airports {
  airport_id int
  created_at timestamp
  name varchar(128)
  city varchar(64)
  country varchar(64)
  is_opened bool
}
Table airlines {
  airline_id int
  created_at timestamp
  name varchar(128)
}



Ref: "passagers"."passager_id" < "flights"."passager_id"

Ref: "airlines"."airline_id" < "flights"."airline_id"



Ref: "airports"."airport_id" < "flights"."dep_airport_id"

Ref: "airports"."airport_id" < "flights"."arr_airport_id"

Ref: "seats"."seat_num" < "tickets"."seat_num"

Ref: "flights"."flight_id" < "tickets"."flight_id"

Ref: "passagers"."passager_id" < "tickets"."passager_id"

Ref: "passagers"."passager_id" < "seats"."passager_id"

Ref: "flights"."flight_id" < "seats"."flight_id"



Ref: "seats"."seat_num" < "flights"."seat_num"