.class public Lcom/cornflower/characters/presenter/MyFontPresenterImp;
.super Ljava/lang/Object;
.source "MyFontPresenterImp.java"

# interfaces
.implements Lcom/cornflower/characters/presenter/MyFontPresenter;


# instance fields
.field private context:Landroid/content/Context;

.field private editFontView:Lcom/cornflower/characters/view/EditFontView;

.field private isSave:Z

.field private mainView:Lcom/cornflower/characters/view/MainView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cornflower/characters/view/EditFontView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editFontView"    # Lcom/cornflower/characters/view/EditFontView;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->editFontView:Lcom/cornflower/characters/view/EditFontView;

    .line 28
    iput-object p1, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cornflower/characters/view/MainView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainView"    # Lcom/cornflower/characters/view/MainView;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    .line 24
    iput-object p1, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public ShowFonts()V
    .locals 5

    .prologue
    .line 70
    new-instance v0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;

    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cornflower/characters/moudle/dao/FontDaoImp;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "fontDao":Lcom/cornflower/characters/moudle/dao/FontDao;
    invoke-interface {v0}, Lcom/cornflower/characters/moudle/dao/FontDao;->getALLFonts()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "fontList":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 73
    const-string v2, "\u67e5\u8be2\u6570\u636e\u3002\u3002\u3002\u3002"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v2, v1}, Lcom/cornflower/characters/view/MainView;->showMyFont(Ljava/util/List;)V

    .line 75
    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v2}, Lcom/cornflower/characters/view/MainView;->showDataView()V

    .line 81
    :goto_0
    invoke-interface {v0}, Lcom/cornflower/characters/moudle/dao/FontDao;->closeDB()V

    .line 82
    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v2}, Lcom/cornflower/characters/view/MainView;->notifyDataChange()V

    .line 84
    return-void

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v2}, Lcom/cornflower/characters/view/MainView;->showEmpty()V

    .line 78
    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    iget-object v3, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v3}, Lcom/cornflower/characters/view/MainView;->getListFont()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/cornflower/characters/view/MainView;->showMyFont(Ljava/util/List;)V

    goto :goto_0
.end method

.method public clickAddFont()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v0}, Lcom/cornflower/characters/view/MainView;->addFont()V

    .line 35
    return-void
.end method

.method public deleteFont(I)V
    .locals 3
    .param p1, "postion"    # I

    .prologue
    .line 60
    new-instance v0, Lcom/cornflower/characters/moudle/dao/FontDaoImp;

    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cornflower/characters/moudle/dao/FontDaoImp;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "fontDao":Lcom/cornflower/characters/moudle/dao/FontDao;
    iget-object v2, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->mainView:Lcom/cornflower/characters/view/MainView;

    invoke-interface {v2}, Lcom/cornflower/characters/view/MainView;->getListFont()Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v2}, Lcom/cornflower/characters/moudle/entity/Font;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/cornflower/characters/moudle/dao/FontDao;->delete(Ljava/lang/String;)Z

    .line 63
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 64
    invoke-interface {v0}, Lcom/cornflower/characters/moudle/dao/FontDao;->closeDB()V

    .line 65
    invoke-virtual {p0}, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->ShowFonts()V

    .line 68
    return-void
.end method

.method public saveFont()V
    .locals 8

    .prologue
    .line 38
    iget-object v6, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->editFontView:Lcom/cornflower/characters/view/EditFontView;

    invoke-interface {v6}, Lcom/cornflower/characters/view/EditFontView;->getFont()Lcom/cornflower/characters/moudle/entity/Font;

    move-result-object v1

    .line 39
    .local v1, "font":Lcom/cornflower/characters/moudle/entity/Font;
    const/4 v5, 0x0

    .line 40
    .local v5, "isUpdate":Z
    new-instance v2, Lcom/cornflower/characters/moudle/dao/FontDaoImp;

    iget-object v6, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/cornflower/characters/moudle/dao/FontDaoImp;-><init>(Landroid/content/Context;)V

    .line 41
    .local v2, "fontDao":Lcom/cornflower/characters/moudle/dao/FontDao;
    invoke-interface {v2}, Lcom/cornflower/characters/moudle/dao/FontDao;->getALLFonts()Ljava/util/List;

    move-result-object v3

    .line 42
    .local v3, "fontList":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cornflower/characters/moudle/entity/Font;

    .line 43
    .local v0, "f":Lcom/cornflower/characters/moudle/entity/Font;
    invoke-virtual {v1}, Lcom/cornflower/characters/moudle/entity/Font;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/cornflower/characters/moudle/entity/Font;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    invoke-interface {v2, v1}, Lcom/cornflower/characters/moudle/dao/FontDao;->upDate(Lcom/cornflower/characters/moudle/entity/Font;)Z

    .line 45
    const/4 v5, 0x1

    .line 46
    iget-object v6, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->editFontView:Lcom/cornflower/characters/view/EditFontView;

    const-string v7, "\u66f4\u65b0\u6210\u529f"

    invoke-interface {v6, v7}, Lcom/cornflower/characters/view/EditFontView;->success(Ljava/lang/String;)V

    .line 50
    .end local v0    # "f":Lcom/cornflower/characters/moudle/entity/Font;
    :cond_1
    if-nez v5, :cond_2

    iget-boolean v6, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->isSave:Z

    if-nez v6, :cond_2

    .line 51
    invoke-interface {v2, v1}, Lcom/cornflower/characters/moudle/dao/FontDao;->addFont(Lcom/cornflower/characters/moudle/entity/Font;)Z

    .line 52
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->isSave:Z

    .line 53
    iget-object v6, p0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;->editFontView:Lcom/cornflower/characters/view/EditFontView;

    const-string v7, "\u4fdd\u5b58\u6210\u529f"

    invoke-interface {v6, v7}, Lcom/cornflower/characters/view/EditFontView;->success(Ljava/lang/String;)V

    .line 56
    :cond_2
    invoke-interface {v2}, Lcom/cornflower/characters/moudle/dao/FontDao;->closeDB()V

    .line 57
    return-void
.end method
