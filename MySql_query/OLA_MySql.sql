create database Ola;
Use Ola;

#1. Retrieve all successful bookings:
CREATE VIEW SUCCESSFUL_BOOKINGS AS 
SELECT * FROM BOOKINGS WHERE BOOKING_STATUS = 'SUCCESS';

#2. Find the average ride distance for each vehicle type:
create View average_ride_distance_for_each_vehicle as
select Vehicle_Type, avg(Ride_Distance) as
avg_distance from bookings 
group by Vehicle_Type;

#3. Get the total number of cancelled rides by customers:
Create View cancelled_rides_by_customers as
SELECT COUNT(*) FROM bookings
WHERE Booking_Status = 'Canceled by Customer';

#4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW Top_5_Customers as
select Customer_ID , Count(Booking_ID) as total_rides
from bookings 
group by Customer_ID
Order by total_rides DESC LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create view Rides_Cancelled_by_drivers_P_C_issues as
SELECT COUNT(*) FROM bookings 
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create View Min_Max_Driver_Rating as 
select Max(Driver_Ratings) as max_rating, Min(Driver_Ratings) as min_rating
from bookings 
where Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
Create View UPI_Payments as 
Select * from bookings 
where Payment_Method = 'UPI';

#8. Find the average customer rating per vehicle type:
Create view avg_cust_rating as
select Vehicle_Type , avg(Customer_Rating) as avg_customer_rating from bookings
group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
Create view total_successful_ride_value as
select sum(Booking_value) as total_successful_ride_value
from bookings 
WHERE BOOKING_STATUS = 'SUCCESS'; 

#10. List all incomplete rides along with the reason:
Create view incomplete_rides_with_reason as
select Booking_ID , Incomplete_Rides_Reason 
from bookings
where Incomplete_Rides = 'Yes';


#1. Retrieve all successful bookings:
Select * From SUCCESSFUL_BOOKINGS;

#2. Find the average ride distance for each vehicle type:
Select * from average_ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
Select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Rides_Cancelled_by_drivers_P_C_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Min_Max_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Select * from UPI_Payments;

#8. Find the average customer rating per vehicle type:
Select * from avg_cust_rating;

#9. Calculate the total booking value of rides completed successfully:
Select * from total_successful_ride_value;

#10. List all incomplete rides along with the reason:
Select * from incomplete_rides_with_reason;


