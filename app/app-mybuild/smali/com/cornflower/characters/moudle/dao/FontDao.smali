.class public interface abstract Lcom/cornflower/characters/moudle/dao/FontDao;
.super Ljava/lang/Object;
.source "FontDao.java"


# virtual methods
.method public abstract addFont(Lcom/cornflower/characters/moudle/entity/Font;)Z
.end method

.method public abstract closeDB()V
.end method

.method public abstract delete(Ljava/lang/String;)Z
.end method

.method public abstract findFontById(Ljava/lang/String;)Lcom/cornflower/characters/moudle/entity/Font;
.end method

.method public abstract getALLFonts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation
.end method

.method public abstract upDate(Lcom/cornflower/characters/moudle/entity/Font;)Z
.end method
