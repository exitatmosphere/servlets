/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.lab4;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Database implements Serializable {
    private static final String URL = "jdbc:mysql://localhost:3306/car";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    private static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public static List<Car> getTutors() {
        try (CallableStatement call = getConnection().prepareCall("select * from car")) {
            ResultSet resultSet = call.executeQuery();
            List<Car> cars = new ArrayList<>();
            while (resultSet.next()) {
                Car car = new Car();
                car.setName(resultSet.getString(2));
                car.setColor(resultSet.getString(3));
                car.setData(resultSet.getString(4));
                car.setNumber(resultSet.getString(5));
                car.setCountry(resultSet.getString(6));
                cars.add(car);
            }
            return cars;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new ArrayList<>();
    }

    public static void addTutor(Car car) {
        try (CallableStatement call = getConnection().prepareCall("insert into car(name, color, data, number, country) values (?, ?, ?, ?, ?)")) {
            call.setString(1, car.getName());
            call.setString(2, car.getColor());
            call.setString(3, car.getData());
            call.setString(4, car.getNumber());
            call.setString(5, car.getCountry());
            call.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void removeTutor(String tutorId) {
        try (CallableStatement call = getConnection().prepareCall("delete from car where name = ?")) {
            call.setString(1, tutorId);
            call.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void updateTutor(Car car) {
        try (CallableStatement call = getConnection().prepareCall("update car set name = ?, color = ?, data = ?, number = ?, country = ? where name=?")) {//where id = ?
            call.setString(1, car.getName());
            call.setString(2, car.getColor());
            call.setString(3, car.getData());
            call.setString(4, car.getNumber());
            call.setString( 5, car.getCountry());
            call.setString(6, car.getName());
            call.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

