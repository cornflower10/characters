package com.cornflower.characters.moudle.entity;

import android.os.Parcel;
import android.os.Parcelable;

/**
 * Created by bao on 2016/8/20.
 */
public class UpdateInfo implements Parcelable {
    private String desc;//描述
    private int version;//版本号
    private boolean flag;//是否强制更新
    private String url;//下载地址

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public boolean isFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }

    @Override
    public String toString() {
        return "UpdateInfo{" +
                "desc='" + desc + '\'' +
                ", version=" + version +
                ", flag=" + flag +
                ", url='" + url + '\'' +
                '}';
    }

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.desc);
        dest.writeInt(this.version);
        dest.writeByte(this.flag ? (byte) 1 : (byte) 0);
        dest.writeString(this.url);
    }

    public UpdateInfo() {
    }

    protected UpdateInfo(Parcel in) {
        this.desc = in.readString();
        this.version = in.readInt();
        this.flag = in.readByte() != 0;
        this.url = in.readString();
    }

    public static final Creator<UpdateInfo> CREATOR = new Creator<UpdateInfo>() {
        @Override
        public UpdateInfo createFromParcel(Parcel source) {
            return new UpdateInfo(source);
        }

        @Override
        public UpdateInfo[] newArray(int size) {
            return new UpdateInfo[size];
        }
    };
}
