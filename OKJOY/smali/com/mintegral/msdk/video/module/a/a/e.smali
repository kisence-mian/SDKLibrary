.class public Lcom/mintegral/msdk/video/module/a/a/e;
.super Ljava/lang/Object;
.source "DefaultImageLoaderListener.java"

# interfaces
.implements Lcom/mintegral/msdk/base/common/c/c;


# instance fields
.field private a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/e;->b:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Lcom/mintegral/msdk/base/entity/CampaignEx;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/e;->b:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object p2, p0, Lcom/mintegral/msdk/video/module/a/a/e;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    .line 33
    iput-object p3, p0, Lcom/mintegral/msdk/video/module/a/a/e;->c:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 61
    :try_start_0
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/e;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    if-nez v1, :cond_1c

    .line 63
    const-string v0, "ImageLoaderListener"

    const-string v1, "campaign is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_1b
    return-void

    .line 67
    :cond_1c
    new-instance v1, Lcom/mintegral/msdk/base/entity/q;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/entity/q;-><init>()V

    .line 68
    const-string v2, "2000044"

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->n(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->b(I)V

    .line 70
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/e;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->m(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/e;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->d(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/e;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v2}, Lcom/mintegral/msdk/base/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->k(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/base/entity/q;->l(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, p1}, Lcom/mintegral/msdk/base/entity/q;->o(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/entity/q;)J
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_6f

    .line 79
    :goto_5a
    const-string v0, "ImageLoaderListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "desc:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 77
    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    if-nez p1, :cond_a

    .line 40
    :try_start_2
    const-string v0, "ImageLoaderListener"

    const-string v1, "bitmap=null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_9
    :goto_9
    return-void

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/a/a/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_33} :catch_34

    goto :goto_9

    .line 50
    :catch_34
    move-exception v0

    .line 51
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method
