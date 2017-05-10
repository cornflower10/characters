.class public Lcom/cornflower/characters/moudle/dao/FontDaoImp;
.super Ljava/lang/Object;
.source "FontDaoImp.java"

# interfaces
.implements Lcom/cornflower/characters/moudle/dao/FontDao;


# instance fields
.field private mySQLiteOpenHelper:Lcom/cornflower/characters/database/MySQLiteOpenHelper;

.field private sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/cornflower/characters/database/MySQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/cornflower/characters/database/MySQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->mySQLiteOpenHelper:Lcom/cornflower/characters/database/MySQLiteOpenHelper;

    .line 24
    iget-object v0, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->mySQLiteOpenHelper:Lcom/cornflower/characters/database/MySQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/cornflower/characters/database/MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    return-void
.end method


# virtual methods
.method protected GetFontQuery(Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "lue":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    const-string v7, "id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "sID":Ljava/lang/String;
    const-string v7, "name"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "name":Ljava/lang/String;
    const-string v7, "font_name"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "font_name":Ljava/lang/String;
    const-string v7, "font_real_name"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "font_real_name":Ljava/lang/String;
    new-instance v6, Lcom/cornflower/characters/moudle/entity/Font;

    invoke-direct {v6}, Lcom/cornflower/characters/moudle/entity/Font;-><init>()V

    .line 92
    .local v6, "ue":Lcom/cornflower/characters/moudle/entity/Font;
    invoke-virtual {v6, v5}, Lcom/cornflower/characters/moudle/entity/Font;->setId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v6, v1}, Lcom/cornflower/characters/moudle/entity/Font;->setName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6, v4}, Lcom/cornflower/characters/moudle/entity/Font;->setText(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6, v2}, Lcom/cornflower/characters/moudle/entity/Font;->setRealName(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-direct {v0}, Lcom/cornflower/characters/moudle/entity/FColor;-><init>()V

    .line 97
    .local v0, "fColor":Lcom/cornflower/characters/moudle/entity/FColor;
    const-string v7, "color"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/cornflower/characters/moudle/entity/FColor;->setColor(I)V

    .line 99
    invoke-virtual {v6, v0}, Lcom/cornflower/characters/moudle/entity/Font;->setfColor(Lcom/cornflower/characters/moudle/entity/FColor;)V

    .line 100
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v0    # "fColor":Lcom/cornflower/characters/moudle/entity/FColor;
    .end local v1    # "font_name":Ljava/lang/String;
    .end local v2    # "font_real_name":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "sID":Ljava/lang/String;
    .end local v6    # "ue":Lcom/cornflower/characters/moudle/entity/Font;
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    return-object v3
.end method

.method public addFont(Lcom/cornflower/characters/moudle/entity/Font;)Z
    .locals 5
    .param p1, "font"    # Lcom/cornflower/characters/moudle/entity/Font;

    .prologue
    .line 28
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "font_name"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "color"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getfColor()Lcom/cornflower/characters/moudle/entity/FColor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cornflower/characters/moudle/entity/FColor;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    const-string v2, "font_real_name"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :try_start_0
    iget-object v2, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tb_font"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closeDB()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 109
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 61
    iget-object v0, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from tb_font where id=?"

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return v4
.end method

.method public findFontById(Ljava/lang/String;)Lcom/cornflower/characters/moudle/entity/Font;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v1, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select * from tb_font where id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 70
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->GetFontQuery(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->GetFontQuery(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/moudle/entity/Font;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getALLFonts()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select * from tb_font order by id desc"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->GetFontQuery(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public upDate(Lcom/cornflower/characters/moudle/entity/Font;)Z
    .locals 10
    .param p1, "font"    # Lcom/cornflower/characters/moudle/entity/Font;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 45
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "font_name"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v4, "color"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getfColor()Lcom/cornflower/characters/moudle/entity/FColor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cornflower/characters/moudle/entity/FColor;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    const-string v4, "font_real_name"

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_font"

    const-string v6, "id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return v2

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 54
    goto :goto_0
.end method
