#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

MAIN(){
  AVAILABLE_SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
  echo "Welcome, which service would you like?"
  SERVICE_MENU
}

SERVICE_MENU(){
  echo "$AVAILABLE_SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

  read SERVICE_ID_SELECTED
  echo 
  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
  then
    echo "Sorry, that is not a valid service. Please enter the number of the service you want"
    SERVICE_MENU
  else
    SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
    if [[ -z $SERVICE_NAME ]] 
    then
      echo "Sorry, that is not a valid service. Please enter the number of the service you want"
      SERVICE_MENU
    else
      GET_CONTACT_INFO
    fi
  fi
}

GET_CONTACT_INFO(){
  echo "What's your phone number?"
  read CUSTOMER_PHONE
  CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_NAME ]]
  then
    echo "I don't have a record for that phone number, what's your name?"
    read CUSTOMER_NAME
    INSERT_RESULT=$($PSQL "INSERT INTO customers (name,phone) VALUES ('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
  fi

  SELECT_APPOINTMENT_TIME
}

SELECT_APPOINTMENT_TIME(){
  echo -e "\nWhat time would you like your$SERVICE_NAME$CUSTOMER_NAME?"
  read SERVICE_TIME

  CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone='$CUSTOMER_PHONE'")
  INSERT_RESULT=$($PSQL "INSERT INTO appointments (time,service_id,customer_id) VALUES ('$SERVICE_TIME',$SERVICE_ID_SELECTED,$CUSTOMER_ID)")

  echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

MAIN