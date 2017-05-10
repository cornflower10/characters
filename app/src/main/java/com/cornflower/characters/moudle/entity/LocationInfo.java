package com.cornflower.characters.moudle.entity;

import java.io.Serializable;

/**
 * Created by bao on 2016/8/15.
 */
public class LocationInfo implements Serializable {
    private String phoneNumber;
    private String errorCode;
    private String time;
    private double latitude;
    private double longitude;
    private String message;
    private String serialNo;//手机识别号

    public String getSerialNo() {
        return serialNo;
    }

    public void setSerialNo(String serialNo) {
        this.serialNo = serialNo;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(String errorCode) {
        this.errorCode = errorCode;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "LocationInfo{" +
                "phoneNumber='" + phoneNumber + '\'' +
                ", errorCode='" + errorCode + '\'' +
                ", time='" + time + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", message='" + message + '\'' +
                ", serialNo='" + serialNo + '\'' +
                '}';
    }
}
