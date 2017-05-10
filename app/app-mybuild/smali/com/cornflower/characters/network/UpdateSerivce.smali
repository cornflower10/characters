.class public interface abstract Lcom/cornflower/characters/network/UpdateSerivce;
.super Ljava/lang/Object;
.source "UpdateSerivce.java"


# virtual methods
.method public abstract update()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/cornflower/characters/moudle/entity/UpdateInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/update/update.json"
    .end annotation
.end method
