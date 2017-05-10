.class Lcom/cornflower/characters/MainActivity$$ViewBinder$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "MainActivity$$ViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cornflower/characters/MainActivity$$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Lcom/cornflower/characters/MainActivity;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cornflower/characters/MainActivity$$ViewBinder;

.field final synthetic val$target:Lcom/cornflower/characters/MainActivity;


# direct methods
.method constructor <init>(Lcom/cornflower/characters/MainActivity$$ViewBinder;Lcom/cornflower/characters/MainActivity;)V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/cornflower/characters/MainActivity$$ViewBinder$1;, "Lcom/cornflower/characters/MainActivity$$ViewBinder.1;"
    iput-object p1, p0, Lcom/cornflower/characters/MainActivity$$ViewBinder$1;->this$0:Lcom/cornflower/characters/MainActivity$$ViewBinder;

    iput-object p2, p0, Lcom/cornflower/characters/MainActivity$$ViewBinder$1;->val$target:Lcom/cornflower/characters/MainActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1
    .param p1, "p0"    # Landroid/view/View;

    .prologue
    .line 18
    .local p0, "this":Lcom/cornflower/characters/MainActivity$$ViewBinder$1;, "Lcom/cornflower/characters/MainActivity$$ViewBinder.1;"
    iget-object v0, p0, Lcom/cornflower/characters/MainActivity$$ViewBinder$1;->val$target:Lcom/cornflower/characters/MainActivity;

    invoke-virtual {v0}, Lcom/cornflower/characters/MainActivity;->onClick()V

    .line 19
    return-void
.end method
