.class public Lcom/cornflower/characters/MainActivity;
.super Lcom/cornflower/characters/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/cornflower/characters/view/MainView;
.implements Lcom/cornflower/characters/widget/InputDialogFragment$InputListener;
.implements Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cornflower/characters/BaseActivity;",
        "Lcom/cornflower/characters/view/MainView;",
        "Lcom/cornflower/characters/widget/InputDialogFragment$InputListener;",
        "Lcom/cornflower/characters/widget/TipDialogFragment$PositiveButtonListener",
        "<",
        "Lcom/cornflower/characters/moudle/entity/UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private fontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation
.end field

.field ibAdd:Landroid/widget/ImageButton;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d006d
        }
    .end annotation
.end field

.field lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d006e
        }
    .end annotation
.end field

.field private mainFontAdapter:Lcom/cornflower/characters/adapter/MainFontAdapter;

.field private mkeyTime:J

.field private myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

.field toolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/Bind;
        value = {
            0x7f0d006c
        }
    .end annotation
.end field

.field private updateAppPresenter:Lcom/cornflower/characters/presenter/UpdateAppPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/cornflower/characters/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cornflower/characters/MainActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/MainActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->fontList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cornflower/characters/MainActivity;)Lcom/cornflower/characters/presenter/MyFontPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/cornflower/characters/MainActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

    return-object v0
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 88
    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/cornflower/characters/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/cornflower/characters/MainActivity;->setToolbar(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)V

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/cornflower/characters/MainActivity;->fontList:Ljava/util/List;

    .line 90
    new-instance v1, Lcom/cornflower/characters/adapter/MainFontAdapter;

    iget-object v2, p0, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f04002d

    iget-object v4, p0, Lcom/cornflower/characters/MainActivity;->fontList:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/cornflower/characters/adapter/MainFontAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/cornflower/characters/MainActivity;->mainFontAdapter:Lcom/cornflower/characters/adapter/MainFontAdapter;

    .line 91
    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    iget-object v2, p0, Lcom/cornflower/characters/MainActivity;->mainFontAdapter:Lcom/cornflower/characters/adapter/MainFontAdapter;

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    new-instance v2, Lcom/cornflower/characters/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/cornflower/characters/MainActivity$1;-><init>(Lcom/cornflower/characters/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v0, Lcom/cornflower/characters/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/cornflower/characters/MainActivity$2;-><init>(Lcom/cornflower/characters/MainActivity;)V

    .line 122
    .local v0, "creator":Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;
    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    invoke-virtual {v1, v0}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setMenuCreator(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuCreator;)V

    .line 124
    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    new-instance v2, Lcom/cornflower/characters/MainActivity$3;

    invoke-direct {v2, p0}, Lcom/cornflower/characters/MainActivity$3;-><init>(Lcom/cornflower/characters/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setOnMenuItemClickListener(Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView$OnMenuItemClickListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public ActvvityFinish()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/cornflower/characters/MainActivity;->finish()V

    .line 205
    return-void
.end method

.method public addFont()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/cornflower/characters/widget/InputDialogFragment;

    invoke-direct {v0}, Lcom/cornflower/characters/widget/InputDialogFragment;-><init>()V

    .line 159
    .local v0, "inputDialogFragment":Lcom/cornflower/characters/widget/InputDialogFragment;
    invoke-virtual {p0}, Lcom/cornflower/characters/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "inputDialog"

    invoke-virtual {v0, v1, v2}, Lcom/cornflower/characters/widget/InputDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public getListFont()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->fontList:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataChange()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->mainFontAdapter:Lcom/cornflower/characters/adapter/MainFontAdapter;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->mainFontAdapter:Lcom/cornflower/characters/adapter/MainFontAdapter;

    invoke-virtual {v0}, Lcom/cornflower/characters/adapter/MainFontAdapter;->notifyDataSetChanged()V

    .line 180
    :cond_0
    return-void
.end method

.method public onCancle(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
    .locals 1
    .param p1, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->updateAppPresenter:Lcom/cornflower/characters/presenter/UpdateAppPresenter;

    invoke-virtual {v0, p1}, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->flagUpdate(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V

    .line 271
    return-void
.end method

.method public bridge synthetic onCancle(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/MainActivity;->onCancle(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V

    return-void
.end method

.method public onClick()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0d006d
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

    invoke-interface {v0}, Lcom/cornflower/characters/presenter/MyFontPresenter;->clickAddFont()V

    .line 248
    return-void
.end method

.method public onClickListener(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
    .locals 1
    .param p1, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->updateAppPresenter:Lcom/cornflower/characters/presenter/UpdateAppPresenter;

    invoke-virtual {v0, p1}, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->updateStart(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V

    .line 266
    return-void
.end method

.method public bridge synthetic onClickListener(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Lcom/cornflower/characters/moudle/entity/UpdateInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cornflower/characters/MainActivity;->onClickListener(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/cornflower/characters/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/cornflower/characters/MainActivity;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)V

    .line 68
    new-instance v0, Lcom/cornflower/characters/presenter/MyFontPresenterImp;

    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/cornflower/characters/presenter/MyFontPresenterImp;-><init>(Landroid/content/Context;Lcom/cornflower/characters/view/MainView;)V

    iput-object v0, p0, Lcom/cornflower/characters/MainActivity;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

    .line 69
    new-instance v0, Lcom/cornflower/characters/presenter/UpdateAppPresenter;

    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/cornflower/characters/presenter/UpdateAppPresenter;-><init>(Landroid/content/Context;Lcom/cornflower/characters/view/MainView;)V

    iput-object v0, p0, Lcom/cornflower/characters/MainActivity;->updateAppPresenter:Lcom/cornflower/characters/presenter/UpdateAppPresenter;

    .line 70
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->updateAppPresenter:Lcom/cornflower/characters/presenter/UpdateAppPresenter;

    invoke-virtual {v0}, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->update()V

    .line 72
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 73
    const-string v0, "cf114d76ac5828d2770db9925e2c99a9"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/text/push/PMan;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/text/push/PMan;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/text/push/PMan;->getMessage(Landroid/content/Context;Z)V

    .line 78
    invoke-direct {p0}, Lcom/cornflower/characters/MainActivity;->initData()V

    .line 79
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/cornflower/characters/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->updateAppPresenter:Lcom/cornflower/characters/presenter/UpdateAppPresenter;

    invoke-virtual {v0}, Lcom/cornflower/characters/presenter/UpdateAppPresenter;->cancelUpdate()V

    .line 226
    invoke-super {p0}, Lcom/cornflower/characters/BaseActivity;->onDestroy()V

    .line 227
    return-void
.end method

.method public onInputComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    const-class v4, Lcom/cornflower/characters/ToTextActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/cornflower/characters/moudle/entity/Font;

    invoke-direct {v1}, Lcom/cornflower/characters/moudle/entity/Font;-><init>()V

    .line 254
    .local v1, "font":Lcom/cornflower/characters/moudle/entity/Font;
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/cornflower/characters/moudle/entity/Font;->setId(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v1, p1}, Lcom/cornflower/characters/moudle/entity/Font;->setText(Ljava/lang/String;)V

    .line 256
    new-instance v0, Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-direct {v0}, Lcom/cornflower/characters/moudle/entity/FColor;-><init>()V

    .line 257
    .local v0, "fColor":Lcom/cornflower/characters/moudle/entity/FColor;
    iget-object v3, p0, Lcom/cornflower/characters/MainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/cornflower/characters/moudle/entity/FColor;->setColor(I)V

    .line 258
    invoke-virtual {v1, v0}, Lcom/cornflower/characters/moudle/entity/Font;->setfColor(Lcom/cornflower/characters/moudle/entity/FColor;)V

    .line 259
    const-string v3, "name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v2}, Lcom/cornflower/characters/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 209
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/cornflower/characters/MainActivity;->mkeyTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cornflower/characters/MainActivity;->mkeyTime:J

    .line 212
    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 219
    :goto_0
    return v0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/cornflower/characters/MainActivity;->finish()V

    .line 215
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cornflower/characters/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 239
    .local v0, "id":I
    const v1, 0x7f0d008e

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/cornflower/characters/MainActivity;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

    invoke-interface {v1}, Lcom/cornflower/characters/presenter/MyFontPresenter;->clickAddFont()V

    .line 242
    :cond_0
    invoke-super {p0, p1}, Lcom/cornflower/characters/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/cornflower/characters/BaseActivity;->onPause()V

    .line 83
    const-string v0, "SplashScreen"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageEnd(Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/cornflower/characters/BaseActivity;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->myFontPresenter:Lcom/cornflower/characters/presenter/MyFontPresenter;

    invoke-interface {v0}, Lcom/cornflower/characters/presenter/MyFontPresenter;->ShowFonts()V

    .line 141
    const-string v0, "SplashScreen"

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPageStart(Ljava/lang/String;)V

    .line 142
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method public showDataView()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 192
    return-void
.end method

.method public showEmpty()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->lv:Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/widget/sweeplist/SwipeMenuListView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->ibAdd:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public showMyFont(Ljava/util/List;)V
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
    .line 165
    .local p1, "fontList":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->fontList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity;->fontList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-void
.end method

.method public showUpdateDioag(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)V
    .locals 3
    .param p1, "updateInfo"    # Lcom/cornflower/characters/moudle/entity/UpdateInfo;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p1}, Lcom/cornflower/characters/widget/TipDialogFragment;->newInstance(Lcom/cornflower/characters/moudle/entity/UpdateInfo;)Lcom/cornflower/characters/widget/TipDialogFragment;

    move-result-object v0

    .line 198
    .local v0, "tipDialogFragment":Lcom/cornflower/characters/widget/TipDialogFragment;
    invoke-virtual {p0}, Lcom/cornflower/characters/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Lcom/cornflower/characters/widget/TipDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    return-void
.end method
