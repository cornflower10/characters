.class public Lcom/text/push/DActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    sput v0, Lcom/text/push/DActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/text/push/DActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/DActivity;->a:I

    add-int/lit8 v1, v1, 0x3

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget v0, Lcom/text/push/DActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/DActivity;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/Configuration;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/text/push/a;->a(Landroid/content/Context;)V

    sget v0, Lcom/text/push/DActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/DActivity;->a:I

    add-int/lit8 v1, v1, -0x12

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/text/push/DActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/DActivity;->a:I

    add-int/lit8 v1, v1, -0xa

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/text/push/DActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/DActivity;->a:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/widget/AdapterView;

    aput-object v3, v2, v4

    const-class v3, Landroid/view/View;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget v0, Lcom/text/push/DActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/DActivity;->a:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
