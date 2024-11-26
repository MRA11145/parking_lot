# **Parking Lot Management System**

A **Flutter-based Parking Lot Management System** that supports multiple vehicle types, streamlines parking operations, and calculates fees dynamically.

---

## Features

- Multi-floor parking system
- Support for different vehicle types:
  - Cars
  - Motorcycles
  - Handicapped vehicles
- Dynamic fee calculation based on vehicle type
- Real-time parking spot availability tracking
- Special slots for handicapped vehicles

  

## **System Architecture**

### **Class Diagram**

```mermaid
classDiagram
class ParkingLot {
- List<List<List<Vehicles>>> spots
- int floors
- int rows
- int spotsPerFloor
+ park(vehicle, floor, row, spot)
+ leave(vehicle)
+ getAvailableSlots(floor)
+ handicappedSlots(floor)
+ calculateFee(vehicle)
}

class Vehicles {
<<abstract>>
+ VehicleType type
+ String vehicleNumber
+ String vehicleColor
+ int parkedTime
+ PaymentsInterface payment
+ calculateTotal(hours)
}

class PaymentsInterface {
<<interface>>
+ calculateTotal(hours)
}

class Car {
+ getVehicleType()
+ getVehicleNumber()
+ getVehicleColor()
+ getParkedTime()
}

class Bike {
+ getVehicleType()
+ getVehicleNumber()
+ getVehicleColor()
+ getParkedTime()
}

class HandicappedVh {
+ getVehicleType()
+ getVehicleNumber()
+ getVehicleColor()
+ getParkedTime()
}

Vehicles <|-- Car
Vehicles <|-- Bike
Vehicles <|-- HandicappedVh
Vehicles ..|> PaymentsInterface
ParkingLot --> Vehicles







