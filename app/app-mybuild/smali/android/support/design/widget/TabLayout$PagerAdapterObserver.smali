.class Landroid/support/design/widget/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 2170
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p2, "x1"    # Landroid/support/design/widget/TabLayout$1;

    .prologue
    .line 2170
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2173
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    # invokes: Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$2900(Landroid/support/design/widget/TabLayout;)V

    .line 2174
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    # invokes: Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V
    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->access$2900(Landroid/support/design/widget/TabLayout;)V

    .line 2179
    return-void
.end method
