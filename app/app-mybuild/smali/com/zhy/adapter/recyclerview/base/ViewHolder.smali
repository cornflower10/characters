.class public Lcom/zhy/adapter/recyclerview/base/ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ViewHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p1, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mConvertView:Landroid/view/View;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 35
    return-void
.end method

.method public static createViewHolder(Landroid/content/Context;Landroid/view/View;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 40
    new-instance v0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 41
    .local v0, "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    return-object v0
.end method

.method public static createViewHolder(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I

    .prologue
    .line 47
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "itemView":Landroid/view/View;
    new-instance v0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 50
    .local v0, "holder":Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    return-object v0
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getView(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 62
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    :cond_0
    return-object v0
.end method

.method public linkify(I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, "view":Landroid/widget/TextView;
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 171
    return-object p0
.end method

.method public setAlpha(IF)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 157
    :goto_0
    return-object p0

    .line 152
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 153
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setBackgroundColor(II)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 119
    return-object p0
.end method

.method public setBackgroundRes(II)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "backgroundRes"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    return-object p0
.end method

.method public setChecked(IZ)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 239
    .local v0, "view":Landroid/widget/Checkable;
    invoke-interface {v0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 240
    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 104
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    return-object p0
.end method

.method public setImageResource(II)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    return-object p0
.end method

.method public setMax(II)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 203
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 204
    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 266
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 267
    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 258
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    return-object p0
.end method

.method public setProgress(II)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 188
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 189
    return-object p0
.end method

.method public setProgress(III)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I
    .param p3, "max"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 195
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 196
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 197
    return-object p0
.end method

.method public setRating(IF)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 210
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 211
    return-object p0
.end method

.method public setRating(IFI)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F
    .param p3, "max"    # I

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 217
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 218
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 219
    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 233
    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 90
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object p0
.end method

.method public setTextColor(II)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    return-object p0
.end method

.method public setTextColorRes(II)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "textColorRes"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 6
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "viewIds"    # [I

    .prologue
    .line 176
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 178
    .local v4, "viewId":I
    invoke-virtual {p0, v4}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 179
    .local v3, "view":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 180
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v3    # "view":Landroid/widget/TextView;
    .end local v4    # "viewId":I
    :cond_0
    return-object p0
.end method

.method public setVisible(IZ)Lcom/zhy/adapter/recyclerview/base/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/recyclerview/base/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    return-object p0

    .line 163
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method
