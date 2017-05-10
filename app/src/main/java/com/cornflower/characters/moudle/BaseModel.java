package com.cornflower.characters.moudle;

import java.io.Serializable;

/**
 * Created by bao on 2016/8/15.
 */
public class BaseModel<T> implements Serializable {
    private T data;
    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }


}
