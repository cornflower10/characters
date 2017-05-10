.class public Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;
.super Ljava/lang/Object;
.source "ShowFontMoudleImp.java"

# interfaces
.implements Lcom/cornflower/characters/moudle/ShowFontMoudle;


# instance fields
.field private mContext:Landroid/content/Context;

.field private sharedPreferencesUtils:Lcom/cornflower/characters/utils/SharedPreferencesUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/cornflower/characters/utils/SharedPreferencesUtils;

    const-string v1, "font"

    invoke-direct {v0, p1, v1}, Lcom/cornflower/characters/utils/SharedPreferencesUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;->sharedPreferencesUtils:Lcom/cornflower/characters/utils/SharedPreferencesUtils;

    .line 28
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;->sharedPreferencesUtils:Lcom/cornflower/characters/utils/SharedPreferencesUtils;

    invoke-virtual {v0, p1}, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->remove(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public getALLFonts()Ljava/util/List;
    .locals 2
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
    .line 79
    iget-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;->sharedPreferencesUtils:Lcom/cornflower/characters/utils/SharedPreferencesUtils;

    const-class v1, Lcom/cornflower/characters/moudle/entity/Font;

    invoke-virtual {v0, v1}, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->getObjectAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFontColors(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/FColor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/FColor;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "colors":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 55
    new-instance v1, Lcom/cornflower/characters/moudle/entity/FColor;

    invoke-direct {v1}, Lcom/cornflower/characters/moudle/entity/FColor;-><init>()V

    .line 56
    .local v1, "fColor":Lcom/cornflower/characters/moudle/entity/FColor;
    aget-object v4, v0, v2

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/cornflower/characters/moudle/entity/FColor;->setColor(I)V

    .line 57
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "fColor":Lcom/cornflower/characters/moudle/entity/FColor;
    :cond_0
    return-object v3
.end method

.method public getFontType(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cornflower/characters/moudle/entity/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v3, "fontName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v2, "fontList":Ljava/util/List;, "Ljava/util/List<Lcom/cornflower/characters/moudle/entity/Font;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "font"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 38
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "fontRealName":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 40
    new-instance v1, Lcom/cornflower/characters/moudle/entity/Font;

    invoke-direct {v1}, Lcom/cornflower/characters/moudle/entity/Font;-><init>()V

    .line 41
    .local v1, "font":Lcom/cornflower/characters/moudle/entity/Font;
    invoke-static {}, Lcom/cornflower/characters/utils/PublicUtils;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/cornflower/characters/moudle/entity/Font;->setId(Ljava/lang/String;)V

    .line 42
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/cornflower/characters/moudle/entity/Font;->setName(Ljava/lang/String;)V

    .line 43
    aget-object v6, v4, v5

    invoke-virtual {v1, v6}, Lcom/cornflower/characters/moudle/entity/Font;->setRealName(Ljava/lang/String;)V

    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 35
    .end local v1    # "font":Lcom/cornflower/characters/moudle/entity/Font;
    .end local v4    # "fontRealName":[Ljava/lang/String;
    .end local v5    # "i":I
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "fontRealName":[Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_0
    return-object v2
.end method

.method public saveFont(Lcom/cornflower/characters/moudle/entity/Font;)Z
    .locals 2
    .param p1, "font"    # Lcom/cornflower/characters/moudle/entity/Font;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;->sharedPreferencesUtils:Lcom/cornflower/characters/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->setObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public upDate(Lcom/cornflower/characters/moudle/entity/Font;)Z
    .locals 2
    .param p1, "font"    # Lcom/cornflower/characters/moudle/entity/Font;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cornflower/characters/moudle/moudleImpl/ShowFontMoudleImp;->sharedPreferencesUtils:Lcom/cornflower/characters/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/cornflower/characters/moudle/entity/Font;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/cornflower/characters/utils/SharedPreferencesUtils;->setObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
