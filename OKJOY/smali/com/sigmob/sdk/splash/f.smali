.class Lcom/sigmob/sdk/splash/f;
.super Lcom/sigmob/sdk/base/common/z;


# instance fields
.field e:Lcom/sigmob/sdk/splash/d;

.field private f:Lcom/sigmob/volley/toolbox/j;

.field private g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/s;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/z;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method

.method static synthetic d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method

.method static synthetic e(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method static synthetic f(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/s;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/s;)V
    .registers 7

    iput-object p2, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_d
    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {v0, v1}, Lcom/sigmob/sdk/base/common/s;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    invoke-static {}, Lcom/sigmob/sdk/base/common/u;->a()Lcom/sigmob/volley/toolbox/i;

    move-result-object v0

    new-instance v1, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {v1}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashURL()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    sget-object v2, Lcom/sigmob/volley/toolbox/e;->d:Lcom/sigmob/volley/toolbox/e;

    iput-object v2, v1, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/e;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sigmob/volley/toolbox/d;->h:Z

    new-instance v2, Lcom/sigmob/sdk/splash/f$1;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/splash/f$1;-><init>(Lcom/sigmob/sdk/splash/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/volley/toolbox/i;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/h;)Lcom/sigmob/volley/toolbox/j;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->f:Lcom/sigmob/volley/toolbox/j;

    goto :goto_39
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_4
    invoke-static {p2}, Lcom/sigmob/sdk/splash/d;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/z;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    instance-of v0, v0, Lcom/sigmob/sdk/splash/g;

    if-eqz v0, :cond_27

    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/s;

    check-cast v0, Lcom/sigmob/sdk/splash/g;

    iget-wide v2, p0, Lcom/sigmob/sdk/splash/f;->a:J

    invoke-direct {v1, v0, v2, v3}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;-><init>(Lcom/sigmob/sdk/splash/g;J)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    :cond_27
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/z;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public b()V
    .registers 3

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/z;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    :cond_11
    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v1, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_26
    const/4 v0, 0x1

    goto :goto_7
.end method
