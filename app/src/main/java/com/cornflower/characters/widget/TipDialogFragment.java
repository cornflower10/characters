package com.cornflower.characters.widget;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AlertDialog;
import android.view.LayoutInflater;

import com.cornflower.characters.R;
import com.cornflower.characters.moudle.entity.UpdateInfo;

/**
 * Created by Administrator on 2016/8/1.
 */
public class TipDialogFragment extends DialogFragment {
    private UpdateInfo updateInfo;
    private  PositiveButtonListener positiveButtonListener ;
   public interface PositiveButtonListener<T> {
        void onClickListener(T t);
        void onCancle(T t);
    }


    public static TipDialogFragment newInstance(UpdateInfo updateInfo) {
        TipDialogFragment f = new TipDialogFragment();
        Bundle args = new Bundle();
        args.putParcelable("updateInfo", (Parcelable) updateInfo);
        f.setArguments(args);
        return f;
    }
    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(), R.style.inputDialog);
        // Get the layout inflater
        positiveButtonListener = (PositiveButtonListener)getActivity();
        updateInfo  = getArguments().getParcelable("updateInfo");
        LayoutInflater inflater = getActivity().getLayoutInflater();
        builder.setTitle("版本更新");
        builder.setCancelable(false).setMessage("发现新版本，是否更新？");
        builder
                // Add action buttons
                .setPositiveButton("是",
                        new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialog, int id) {

                                positiveButtonListener.onClickListener(updateInfo);
                            }
                        }).setNegativeButton("否", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                positiveButtonListener.onCancle(updateInfo);
            }
        });
        return builder.create();
    }
}
