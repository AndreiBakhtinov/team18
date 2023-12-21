// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table passagers{
  passagers_id int
  last_name varchar(128)
  first_name int
  passaport_num int
  email varchar(128)
  age int
  telefon int
  full_adress varchar(128)
  created_at timestamp
  is_blocked bool

}
Table tickets{
  tickets_id int
  passagers_id int
  flight_id int
  seat_num int
  created_at timestamp

}
Table flights{
  flight_number int
  airport_id int
  passagers_id int
  seat_num int
  arrival_time timestamp
  arrival_date database
  departure_time timestamp
  departure_date database
  departure_city varchar(64)
  arrival_city varchar(64)
  airplane_id int
}
Table Booking{
  booking_id int
  passagers_id int
  flight_number int
  seat_num int
  baggage varchar(64)
}
Table Booking_Status{
  status varchar(64)
}
Table airport{
  airport_id int
  continent varchar(64)
  country varchar(64)
  city varchar(64)
  created_at timestamp
}
Table Payment{
  payment_id int
  booking_id int
  payment_date timestamp

}





Ref: "passagers"."passagers_id" < "flights"."passagers_id"

Ref: "airport"."airport_id" < "flights"."airport_id"

Ref: "tickets"."flight_id" < "flights"."flight_number"

Ref: "Booking"."passagers_id" < "passagers"."passagers_id"

Ref: "Payment"."booking_id" < "Booking"."booking_id"



https://dbdiagram.io/d/Copy-of-online_school-65564d533be1495787253458