.class public final Lcom/mintegral/msdk/video/module/a/a/j;
.super Lcom/mintegral/msdk/video/module/a/a/e;
.source "RoundedImageLoaderListener.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/a/a/e;-><init>(Landroid/widget/ImageView;)V

    .line 21
    iput p2, p0, Lcom/mintegral/msdk/video/module/a/a/j;->a:I

    .line 22
    return-void
.end method


# virtual methods
.method public final onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 27
    if-nez p1, :cond_a

    .line 28
    :try_start_2
    const-string v0, "ImageLoaderListener"

    const-string v1, "bitmap=null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_9
    :goto_9
    return-void

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/j;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 33
    iget v0, p0, Lcom/mintegral/msdk/video/module/a/a/j;->a:I

    invoke-static {p1, v0}, Lcom/mintegral/msdk/base/utils/f;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 34
    if-eqz v1, :cond_9

    .line 35
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2f} :catch_30

    goto :goto_9

    .line 39
    :catch_30
    move-exception v0

    .line 40
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method
