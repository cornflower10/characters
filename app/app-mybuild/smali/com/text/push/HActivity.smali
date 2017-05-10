.class public Lcom/text/push/HActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    sput v0, Lcom/text/push/HActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/text/push/a;->a(Landroid/content/Context;)V

    sget v0, Lcom/text/push/HActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/HActivity;->a:I

    add-int/lit8 v1, v1, -0x1a

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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/text/push/HActivity;->a:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/HActivity;->a:I

    add-int/lit8 v1, v1, -0x12

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
