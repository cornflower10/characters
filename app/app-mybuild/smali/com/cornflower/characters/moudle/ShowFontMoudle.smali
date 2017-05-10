.class public interface abstract Lcom/cornflower/characters/moudle/ShowFontMoudle;
.super Ljava/lang/Object;
.source "ShowFontMoudle.java"


# virtual methods
.method public abstract delete(Ljava/lang/String;)V
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

.method public abstract getFontColors(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFontType(Landroid/content/Context;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveFont(Lcom/cornflower/characters/moudle/entity/Font;)Z
.end method

.method public abstract upDate(Lcom/cornflower/characters/moudle/entity/Font;)Z
.end method
