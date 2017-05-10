.class public Lcom/cornflower/characters/database/MySQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySQLiteOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const-string v0, "font.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 13
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 17
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CREATE TABLE if not exists tb_font(id integer primary key autoincrement,name text,font_name text,font_real_name text,color text)"

    aput-object v3, v0, v2

    .line 19
    .local v0, "SQL":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 20
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 26
    if-le p3, p2, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/database/MySQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    :cond_0
    return-void
.end method
