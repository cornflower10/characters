.class Lcom/cornflower/characters/presenter/ShowFontPresenter$2;
.super Lrx/Subscriber;
.source "ShowFontPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFont()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/cornflower/characters/moudle/entity/Font;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/presenter/ShowFontPresenter;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$2;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$2;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    # getter for: Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;
    invoke-static {v0}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->access$200(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Lcom/cornflower/characters/view/ShowFontView;

    move-result-object v0

    invoke-interface {v0}, Lcom/cornflower/characters/view/ShowFontView;->hideLoding()V

    .line 46
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$2;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    # getter for: Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;
    invoke-static {v0}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->access$200(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Lcom/cornflower/characters/view/ShowFontView;

    move-result-object v0

    invoke-interface {v0}, Lcom/cornflower/characters/view/ShowFontView;->hideLoding()V

    .line 52
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/presenter/ShowFontPresenter$2;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "fonts":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    iget-object v0, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$2;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    # getter for: Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;
    invoke-static {v0}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->access$200(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Lcom/cornflower/characters/view/ShowFontView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cornflower/characters/view/ShowFontView;->showFontType(Ljava/util/List;)V

    .line 56
    return-void
.end method
