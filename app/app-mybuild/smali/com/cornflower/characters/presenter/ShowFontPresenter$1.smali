.class Lcom/cornflower/characters/presenter/ShowFontPresenter$1;
.super Ljava/lang/Object;
.source "ShowFontPresenter.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


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
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
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
    .line 33
    iput-object p1, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$1;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/presenter/ShowFontPresenter$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;>;"
    iget-object v1, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$1;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    # getter for: Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontMoudle:Lcom/cornflower/characters/moudle/ShowFontMoudle;
    invoke-static {v1}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->access$100(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Lcom/cornflower/characters/moudle/ShowFontMoudle;

    move-result-object v1

    iget-object v2, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$1;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    # getter for: Lcom/cornflower/characters/presenter/ShowFontPresenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->access$000(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cornflower/characters/moudle/ShowFontMoudle;->getFontType(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "fontList":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cornflower/characters/moudle/entity/Font;

    iget-object v2, p0, Lcom/cornflower/characters/presenter/ShowFontPresenter$1;->this$0:Lcom/cornflower/characters/presenter/ShowFontPresenter;

    # getter for: Lcom/cornflower/characters/presenter/ShowFontPresenter;->showFontView:Lcom/cornflower/characters/view/ShowFontView;
    invoke-static {v2}, Lcom/cornflower/characters/presenter/ShowFontPresenter;->access$200(Lcom/cornflower/characters/presenter/ShowFontPresenter;)Lcom/cornflower/characters/view/ShowFontView;

    move-result-object v2

    invoke-interface {v2}, Lcom/cornflower/characters/view/ShowFontView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/moudle/entity/Font;->setText(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 40
    return-void
.end method
