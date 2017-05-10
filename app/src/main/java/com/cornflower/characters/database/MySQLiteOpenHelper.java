package com.cornflower.characters.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import com.cornflower.characters.common.ConstantsDatabase;

public class MySQLiteOpenHelper extends SQLiteOpenHelper {

	public MySQLiteOpenHelper(Context context) {
		super(context, ConstantsDatabase.DATABASE, null, ConstantsDatabase.DATABASE_VERSION);
	}
 
	@Override
	public void onCreate(SQLiteDatabase db) {
		String[] SQL = { ConstantsDatabase.TB_FONT_SQL
				};
		for (int i = 0; i < SQL.length; i++) {
			db.execSQL(SQL[i]);
		}
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int arg1, int arg2) {
		if(arg2>arg1){
			onCreate(db);
		}

	}

}
