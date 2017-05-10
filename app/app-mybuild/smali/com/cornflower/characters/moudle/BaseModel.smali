.class public Lcom/cornflower/characters/moudle/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/cornflower/characters/moudle/BaseModel;, "Lcom/cornflower/characters/moudle/BaseModel<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, "this":Lcom/cornflower/characters/moudle/BaseModel;, "Lcom/cornflower/characters/moudle/BaseModel<TT;>;"
    iget-object v0, p0, Lcom/cornflower/characters/moudle/BaseModel;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/cornflower/characters/moudle/BaseModel;, "Lcom/cornflower/characters/moudle/BaseModel<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/cornflower/characters/moudle/BaseModel;->data:Ljava/lang/Object;

    .line 16
    return-void
.end method
