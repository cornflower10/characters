.class public Lcom/cornflower/characters/moudle/entity/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/cornflower/characters/moudle/entity/Message;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/cornflower/characters/moudle/entity/Message;->success:Z

    .line 15
    return-void
.end method
