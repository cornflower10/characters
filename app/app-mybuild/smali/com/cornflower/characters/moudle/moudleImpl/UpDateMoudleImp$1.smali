.class Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp$1;
.super Lrx/Subscriber;
.source "UpDateMoudleImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->requestUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lcom/cornflower/characters/moudle/entity/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp$1;->this$0:Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    iget-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp$1;->this$0:Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;

    # getter for: Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->common:Lcom/cornflower/characters/moudle/Common;
    invoke-static {v0}, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->access$000(Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;)Lcom/cornflower/characters/moudle/Common;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cornflower/characters/moudle/Common;->error(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public onNext(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
    .locals 1
    .param p1, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp$1;->this$0:Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;

    # getter for: Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->common:Lcom/cornflower/characters/moudle/Common;
    invoke-static {v0}, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;->access$000(Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp;)Lcom/cornflower/characters/moudle/Common;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cornflower/characters/moudle/Common;->Success(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 21
    check-cast p1, Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/moudle/moudleImpl/UpDateMoudleImp$1;->onNext(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V

    return-void
.end method
