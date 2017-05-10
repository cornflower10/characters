package com.cornflower.characters.widget;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;

import com.cornflower.characters.R;

/**
 * Created by Administrator on 2016/8/1.
 */
public class InputDialogFragment extends DialogFragment {
    private EditText mText;

    public interface InputListener
    {
        void onInputComplete(String text);
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState)
    {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity(),R.style.inputDialog);
        // Get the layout inflater
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View view = inflater.inflate(R.layout.fragment_dialog, null);
        mText = (EditText) view.findViewById(R.id.et);
        builder.setTitle("文本");
        builder.setView(view)
                // Add action buttons
                .setPositiveButton("确定",
                        new DialogInterface.OnClickListener()
                        {
                            @Override
                            public void onClick(DialogInterface dialog, int id)
                            {
                                InputListener listener = (InputListener) getActivity();
                                if(!TextUtils.isEmpty(mText.getText())){
                                    listener.onInputComplete(mText
                                            .getText().toString().trim());
                                }
                            }
                        }).setNegativeButton("取消", null);
        return builder.create();
    }
}
