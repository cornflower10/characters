.class public Lcom/cornflower/characters/appupdate/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v2, 0x0

    .line 86
    :goto_0
    return-object v2

    .line 77
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 78
    .local v1, "output":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 80
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 82
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 90
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 91
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 92
    :cond_0
    instance-of v2, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 93
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 116
    invoke-virtual {p0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 120
    .local v3, "willNotCache":Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 123
    .local v2, "color":I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 125
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    .local v1, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 137
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 141
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 142
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public static readStreamToBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 32
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 33
    .local v1, "length":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 34
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 37
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 38
    .local v3, "result":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 40
    return-object v3
.end method

.method public static writeFile(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 56
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v2, "out":Ljava/io/FileOutputStream;
    const/high16 v3, 0x20000

    new-array v0, v3, [B

    .line 58
    .local v0, "buffer":[B
    const/4 v1, -0x1

    .line 59
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 60
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 63
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 64
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 66
    return-void
.end method
