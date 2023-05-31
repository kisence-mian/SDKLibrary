.class public Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;
.super Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;
.source ""


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1f

    move-result v0

    if-lez v0, :cond_1d

    const v2, 0x7fffffff

    if-ge v0, v2, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c

    :catch_1f
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1c
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->getHeight()I

    move-result v1

    if-gtz v1, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    const-string v1, "mMaxHeight"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public getScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->getScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    move-result-object v0

    goto :goto_e
.end method

.method public getWidth()I
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->getWidth()I

    move-result v1

    if-gtz v1, :cond_17

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    const-string v1, "mMaxWidth"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public bridge synthetic getWrappedView()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageViewAware;->getWrappedView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedView()Landroid/widget/ImageView;
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .registers 3

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 4

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_e
    return-void
.end method
