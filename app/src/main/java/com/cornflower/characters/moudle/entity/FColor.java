package com.cornflower.characters.moudle.entity;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by Administrator on 2016/8/9.
 */
public class FColor implements Parcelable {
    private int color;

    public int getColor() {
        return color;
    }

    public void setColor(int color) {
        this.color = color;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.color);
    }

    public FColor() {
    }

    protected FColor(Parcel in) {
        this.color = in.readInt();
    }

    public static final Creator<FColor> CREATOR = new Creator<FColor>() {
        @Override
        public FColor createFromParcel(Parcel source) {
            return new FColor(source);
        }

        @Override
        public FColor[] newArray(int size) {
            return new FColor[size];
        }
    };
}
