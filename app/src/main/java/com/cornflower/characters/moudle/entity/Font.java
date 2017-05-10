package com.cornflower.characters.moudle.entity;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by Administrator on 2016/7/27.
 */
public class Font implements Parcelable{
    private String  id;
    private String name;
    private String realName;
    private String text;
    private boolean checked;
    private FColor fColor = new FColor();

    public FColor getfColor() {
        return fColor;
    }

    public void setfColor(FColor fColor) {
        this.fColor = fColor;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String  getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Font() {
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.id);
        dest.writeString(this.name);
        dest.writeString(this.realName);
        dest.writeString(this.text);
        dest.writeByte(checked ? (byte) 1 : (byte) 0);
        dest.writeParcelable(this.fColor, flags);
    }

    protected Font(Parcel in) {
        this.id = in.readString();
        this.name = in.readString();
        this.realName = in.readString();
        this.text = in.readString();
        this.checked = in.readByte() != 0;
        this.fColor = in.readParcelable(FColor.class.getClassLoader());
    }

    public static final Creator<Font> CREATOR = new Creator<Font>() {
        @Override
        public Font createFromParcel(Parcel source) {
            return new Font(source);
        }

        @Override
        public Font[] newArray(int size) {
            return new Font[size];
        }
    };
}
