.class public Lcom/zhy/adapter/abslistview/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;

.field private mLayoutId:I

.field private mPosition:I

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
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "position"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mConvertView:Landroid/view/View;

    .line 34
    iput p4, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mPosition:I

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mViews:Landroid/util/SparseArray;

    .line 36
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method public static get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "layoutId"    # I
    .param p4, "position"    # I

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "itemView":Landroid/view/View;
    new-instance v0, Lcom/zhy/adapter/abslistview/ViewHolder;

    invoke-direct {v0, p0, v1, p2, p4}, Lcom/zhy/adapter/abslistview/ViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;I)V

    .line 48
    .local v0, "holder":Lcom/zhy/adapter/abslistview/ViewHolder;
    iput p3, v0, Lcom/zhy/adapter/abslistview/ViewHolder;->mLayoutId:I

    .line 54
    .end local v1    # "itemView":Landroid/view/View;
    :goto_0
    return-object v0

    .line 52
    .end local v0    # "holder":Lcom/zhy/adapter/abslistview/ViewHolder;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zhy/adapter/abslistview/ViewHolder;

    .line 53
    .restart local v0    # "holder":Lcom/zhy/adapter/abslistview/ViewHolder;
    iput p4, v0, Lcom/zhy/adapter/abslistview/ViewHolder;->mPosition:I

    goto :goto_0
.end method


# virtual methods
.method public getConvertView()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mConvertView:Landroid/view/View;

    return-object v0
.end method

.method public getItemPosition()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mPosition:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mLayoutId:I

    return v0
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
    .line 67
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 68
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mConvertView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    :cond_0
    return-object v0
.end method

.method public linkify(I)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, "view":Landroid/widget/TextView;
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 190
    return-object p0
.end method

.method public setAlpha(IF)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "value"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 165
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 176
    :goto_0
    return-object p0

    .line 171
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 172
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setBackgroundColor(II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "color"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    return-object p0
.end method

.method public setBackgroundRes(II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "backgroundRes"    # I

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 145
    return-object p0
.end method

.method public setChecked(IZ)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 258
    .local v0, "view":Landroid/widget/Checkable;
    invoke-interface {v0, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 259
    return-object p0
.end method

.method public setImageBitmap(ILandroid/graphics/Bitmap;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    return-object p0
.end method

.method public setImageDrawable(ILandroid/graphics/drawable/Drawable;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-object p0
.end method

.method public setImageResource(II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 116
    .local v0, "view":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    return-object p0
.end method

.method public setMax(II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "max"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 222
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 223
    return-object p0
.end method

.method public setOnClickListener(ILandroid/view/View$OnClickListener;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 269
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    return-object p0
.end method

.method public setOnLongClickListener(ILandroid/view/View$OnLongClickListener;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 286
    return-object p0
.end method

.method public setOnTouchListener(ILandroid/view/View$OnTouchListener;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    return-object p0
.end method

.method public setProgress(II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 207
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 208
    return-object p0
.end method

.method public setProgress(III)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "progress"    # I
    .param p3, "max"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 214
    .local v0, "view":Landroid/widget/ProgressBar;
    invoke-virtual {v0, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 215
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 216
    return-object p0
.end method

.method public setRating(IF)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 229
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 230
    return-object p0
.end method

.method public setRating(IFI)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "rating"    # F
    .param p3, "max"    # I

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 236
    .local v0, "view":Landroid/widget/RatingBar;
    invoke-virtual {v0, p3}, Landroid/widget/RatingBar;->setMax(I)V

    .line 237
    invoke-virtual {v0, p2}, Landroid/widget/RatingBar;->setRating(F)V

    .line 238
    return-object p0
.end method

.method public setTag(IILjava/lang/Object;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "key"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 252
    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    return-object p0
.end method

.method public setTextColor(II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    return-object p0
.end method

.method public setTextColorRes(II)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "textColorRes"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, "view":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    return-object p0
.end method

.method public varargs setTypeface(Landroid/graphics/Typeface;[I)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 6
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "viewIds"    # [I

    .prologue
    .line 195
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 197
    .local v4, "viewId":I
    invoke-virtual {p0, v4}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 198
    .local v3, "view":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 199
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v3    # "view":Landroid/widget/TextView;
    .end local v4    # "viewId":I
    :cond_0
    return-object p0
.end method

.method public setVisible(IZ)Lcom/zhy/adapter/abslistview/ViewHolder;
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/zhy/adapter/abslistview/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "view":Landroid/view/View;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-object p0

    .line 182
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public updatePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/zhy/adapter/abslistview/ViewHolder;->mPosition:I

    .line 89
    return-void
.end method
