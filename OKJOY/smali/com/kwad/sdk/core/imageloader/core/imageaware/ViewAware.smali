.class public abstract Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/core/imageaware/ImageAware;


# static fields
.field public static final WARN_CANT_SET_BITMAP:Ljava/lang/String; = "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

.field public static final WARN_CANT_SET_DRAWABLE:Ljava/lang/String; = "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."


# instance fields
.field protected checkActualViewSize:Z

.field protected viewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    iput-boolean p2, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeight()I
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_28

    if-eqz v2, :cond_28

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    :goto_1f
    if-gtz v0, :cond_25

    if-eqz v2, :cond_25

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25

    :cond_28
    move v0, v1

    goto :goto_1f
.end method

.method public getId()I
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_f

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_e
.end method

.method public getScaleType()Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;->CROP:Lcom/kwad/sdk/core/imageloader/core/assist/ViewScaleType;

    return-object v0
.end method

.method public getWidth()I
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-boolean v3, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->checkActualViewSize:Z

    if-eqz v3, :cond_28

    if-eqz v2, :cond_28

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    :goto_1f
    if-gtz v0, :cond_25

    if-eqz v2, :cond_25

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v1

    goto :goto_25

    :cond_28
    move v0, v1

    goto :goto_1f
.end method

.method public getWrappedView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public isCollected()Z
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t set a bitmap into view. You should call ImageLoader on UI thread for it."

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    move v0, v1

    goto :goto_19
.end method

.method protected abstract setImageBitmapInto(Landroid/graphics/Bitmap;Landroid/view/View;)V
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->viewRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1, v0}, Lcom/kwad/sdk/core/imageloader/core/imageaware/ViewAware;->setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t set a drawable into view. You should call ImageLoader on UI thread for it."

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    move v0, v1

    goto :goto_19
.end method

.method protected abstract setImageDrawableInto(Landroid/graphics/drawable/Drawable;Landroid/view/View;)V
.end method
