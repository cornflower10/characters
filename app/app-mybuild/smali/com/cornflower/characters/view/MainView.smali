.class public interface abstract Lcom/cornflower/characters/view/MainView;
.super Ljava/lang/Object;
.source "MainView.java"


# virtual methods
.method public abstract ActvvityFinish()V
.end method

.method public abstract addFont()V
.end method

.method public abstract getListFont()Ljava/util/List;
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

.method public abstract notifyDataChange()V
.end method

.method public abstract showDataView()V
.end method

.method public abstract showEmpty()V
.end method

.method public abstract showMyFont(Ljava/util/List;)V
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

.method public abstract showUpdateDioag(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
.end method
