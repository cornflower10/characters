.class public Lcom/text/push/PMan;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/text/push/PMan;

.field private static b:Landroid/content/Context;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lcom/text/push/PMan;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/text/push/PMan;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/text/push/a;->a(Landroid/content/Context;)V

    sget v0, Lcom/text/push/PMan;->c:I

    invoke-static {p1, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/PMan;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3, p1}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/text/push/PMan;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/text/push/PMan;->a:Lcom/text/push/PMan;

    if-nez v0, :cond_0

    new-instance v0, Lcom/text/push/PMan;

    invoke-direct {v0, p0}, Lcom/text/push/PMan;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/text/push/PMan;->a:Lcom/text/push/PMan;

    :cond_0
    sput-object p0, Lcom/text/push/PMan;->b:Landroid/content/Context;

    sget v0, Lcom/text/push/PMan;->c:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/PMan;->c:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    sget-object v0, Lcom/text/push/PMan;->a:Lcom/text/push/PMan;

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/text/push/PMan;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/text/push/PMan;->a:Lcom/text/push/PMan;

    if-nez v0, :cond_0

    new-instance v0, Lcom/text/push/PMan;

    invoke-direct {v0, p0}, Lcom/text/push/PMan;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/text/push/PMan;->a:Lcom/text/push/PMan;

    :cond_0
    sput-object p0, Lcom/text/push/PMan;->b:Landroid/content/Context;

    sget v0, Lcom/text/push/PMan;->c:I

    invoke-static {p0, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/PMan;->c:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v4

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    invoke-static {v0, v1, v2, v3, p0}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    sget-object v0, Lcom/text/push/PMan;->a:Lcom/text/push/PMan;

    return-object v0
.end method


# virtual methods
.method public getMessage(Landroid/content/Context;Z)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/text/push/PMan;->c:I

    invoke-static {p1, v0}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/text/push/PMan;->c:I

    add-int/lit8 v1, v1, 0xc

    invoke-static {p1, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3, p1}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method

.method public setResId(IIIII)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v0, Lcom/text/push/PMan;->b:Landroid/content/Context;

    sget v1, Lcom/text/push/PMan;->c:I

    invoke-static {v0, v1}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/text/push/PMan;->b:Landroid/content/Context;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Lcom/text/push/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    sget-object v4, Lcom/text/push/PMan;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/text/push/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    return-void
.end method
