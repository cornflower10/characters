.class public interface abstract Lcom/cornflower/characters/view/ShowFontView;
.super Ljava/lang/Object;
.source "ShowFontView.java"

# interfaces
.implements Lcom/cornflower/characters/view/BaseView;


# virtual methods
.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract showFontColor(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showFontType(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showText()V
.end method
