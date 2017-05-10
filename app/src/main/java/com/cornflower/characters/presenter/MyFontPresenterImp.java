package com.cornflower.characters.presenter;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.cornflower.characters.activity.AboutActivity;
import com.cornflower.characters.moudle.dao.FontDao;
import com.cornflower.characters.moudle.dao.FontDaoImp;
import com.cornflower.characters.moudle.entity.Font;
import com.cornflower.characters.view.EditFontView;
import com.cornflower.characters.view.MainView;

import java.util.List;

/**
 * Created by Administrator on 2016/7/29.
 */
public class MyFontPresenterImp implements MyFontPresenter{
    private Context context;
    private MainView mainView;
    private EditFontView editFontView;
    private boolean isSave;
    public MyFontPresenterImp(Context context, MainView mainView){
        this.mainView = mainView;
       this.context=context;
    }
    public MyFontPresenterImp(Context context, EditFontView editFontView){
        this.editFontView = editFontView;
        this.context=context;
    }

    @Override
    public void clickAddFont() {
        mainView.addFont();

    }

    public void saveFont(){
        Font font =editFontView.getFont();
        boolean isUpdate = false;
        FontDao fontDao = new FontDaoImp(context);
        List<Font> fontList = fontDao.getALLFonts();
        for (Font f: fontList) {
            if(font.getId().equals(f.getId())){
                fontDao.upDate(font);
                isUpdate = true;
                editFontView.success("更新成功");
                break;
            }
        }
        if(!isUpdate&&!isSave){
            fontDao.addFont(font);
            isSave = true;
            editFontView.success("保存成功");
        }

        fontDao.closeDB();
    }

    public void deleteFont(int postion){
        FontDao fontDao =new FontDaoImp(context);
       List<Font> list = mainView.getListFont();
        fontDao.delete(list.get(postion).getId());
        list.remove(postion);
        fontDao.closeDB();
        showFonts();
//        mainView.notifyDataChange();

    }

    @Override
    public void about() {
        Intent intent = new Intent(context, AboutActivity.class);
        context.startActivity(intent);
    }

    public void showFonts(){
        FontDao fontDao =new FontDaoImp(context);
        List<Font> fontList =  fontDao.getALLFonts();
       if(null!=fontList&&fontList.size()>0){
           Log.e("查询数据。。。。","..."+fontList.size());
           mainView.showMyFont(fontList);
           mainView.showDataView();
       } else{
           mainView.showEmpty();
           mainView.showMyFont(mainView.getListFont());
       }

        fontDao.closeDB();
        mainView.notifyDataChange();

    }

}
