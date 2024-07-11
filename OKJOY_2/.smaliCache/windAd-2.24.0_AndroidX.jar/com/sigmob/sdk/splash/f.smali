.class Lcom/sigmob/sdk/splash/f;
.super Lcom/sigmob/sdk/base/common/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/splash/f$a;
    }
.end annotation


# instance fields
.field e:Lcom/sigmob/sdk/splash/d;

.field private f:Lcom/sigmob/volley/toolbox/g$a;

.field private g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;


# direct methods
.method protected constructor <init>(Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/r;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method

.method static synthetic e(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic f(Lcom/sigmob/sdk/splash/f;)Lcom/sigmob/sdk/base/common/k$a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/sigmob/sdk/base/common/k$a;)V
    .registers 5

    iput-object p2, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_d
    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-interface {p1, p2}, Lcom/sigmob/sdk/base/common/k$a;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    goto :goto_65

    :cond_3a
    invoke-static {}, Lcom/sigmob/sdk/base/common/n;->a()Lcom/sigmob/volley/toolbox/g;

    move-result-object p1

    new-instance p2, Lcom/sigmob/volley/toolbox/d;

    invoke-direct {p2}, Lcom/sigmob/volley/toolbox/d;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sigmob/volley/toolbox/d;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sigmob/volley/toolbox/d;->a:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/volley/toolbox/d$a;->e:Lcom/sigmob/volley/toolbox/d$a;

    iput-object v0, p2, Lcom/sigmob/volley/toolbox/d;->b:Lcom/sigmob/volley/toolbox/d$a;

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/sigmob/volley/toolbox/d;->h:Z

    new-instance v0, Lcom/sigmob/sdk/splash/f$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/splash/f$1;-><init>(Lcom/sigmob/sdk/splash/f;)V

    invoke-virtual {p1, p2, v0}, Lcom/sigmob/volley/toolbox/g;->a(Lcom/sigmob/volley/toolbox/d;Lcom/sigmob/volley/toolbox/f$a;)Lcom/sigmob/volley/toolbox/g$a;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/splash/f;->f:Lcom/sigmob/volley/toolbox/g$a;

    :cond_65
    :goto_65
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    :cond_4
    invoke-static {p2}, Lcom/sigmob/sdk/splash/d;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/splash/d;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/r;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    instance-of p2, p2, Lcom/sigmob/sdk/splash/f$a;

    if-eqz p2, :cond_23

    new-instance p2, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    iget-object p3, p0, Lcom/sigmob/sdk/splash/f;->b:Lcom/sigmob/sdk/base/common/k$a;

    check-cast p3, Lcom/sigmob/sdk/splash/f$a;

    iget-wide v0, p0, Lcom/sigmob/sdk/splash/f;->a:J

    invoke-direct {p2, p3, v0, v1}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;-><init>(Lcom/sigmob/sdk/splash/f$a;J)V

    iput-object p2, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    invoke-virtual {p2, p2, p1}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    :cond_23
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/r;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/sigmob/sdk/base/common/r;->b()V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v0}, Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/splash/f;->g:Lcom/sigmob/sdk/splash/SplashAdBroadcastReceiver;

    :cond_d
    return-void
.end method

.method protected b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMaterial()Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCrid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    iget-object p1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->video_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/MaterialMeta;->image_src:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x1

    return p1

    :cond_29
    :goto_29
    return v1
.end method
