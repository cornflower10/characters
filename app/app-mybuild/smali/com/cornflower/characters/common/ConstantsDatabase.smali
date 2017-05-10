.class public Lcom/cornflower/characters/common/ConstantsDatabase;
.super Ljava/lang/Object;
.source "ConstantsDatabase.java"


# static fields
.field public static final DATABASE:Ljava/lang/String; = "font.db"

.field public static final DATABASE_TB:Ljava/lang/String; = "tb_font"

.field public static final DATABASE_VERSION:I = 0x1

.field public static final TB_FONT_SQL:Ljava/lang/String; = "CREATE TABLE if not exists tb_font(id integer primary key autoincrement,name text,font_name text,font_real_name text,color text)"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
