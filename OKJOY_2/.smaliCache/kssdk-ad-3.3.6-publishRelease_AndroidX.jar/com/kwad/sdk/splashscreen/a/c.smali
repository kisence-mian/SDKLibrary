.class public Lcom/kwad/sdk/splashscreen/a/c;
.super Lcom/kwad/sdk/mvp/Presenter;

# interfaces
.implements Lcom/kwad/sdk/core/i/c;


# instance fields
.field protected a:Lcom/kwad/sdk/splashscreen/c;

.field private b:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private c:Z

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/os/Handler;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->c:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/kwad/sdk/splashscreen/a/c;->f:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->g:Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_14

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/c$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/splashscreen/a/c$2;-><init>(Lcom/kwad/sdk/splashscreen/a/c;)V

    goto :goto_24

    :cond_14
    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c;->e:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/kwad/sdk/splashscreen/a/c;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/c$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/splashscreen/a/c$3;-><init>(Lcom/kwad/sdk/splashscreen/a/c;)V

    :goto_24
    invoke-static {p2, p1, v0, v1}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/imageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/a/c;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/splashscreen/a/c;->g:Z

    return p0
.end method

.method static synthetic b(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/c;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/a/c;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/c;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/kwad/sdk/splashscreen/a/c;)Landroid/content/Context;
    .registers 1

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/c;->l()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 9

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/c;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/splashscreen/c;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_splash_background:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_splash_foreground:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->materialUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/c;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v1, p0}, Lcom/kwad/sdk/core/i/b;->a(Lcom/kwad/sdk/core/i/c;)V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/c;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->imageDisplaySecond:I

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/c;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v2}, Lcom/kwad/sdk/core/response/b/a;->y(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;

    move-result-object v2

    iget v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdMaterialInfo$MaterialFeature;->source:I

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/c;->l()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-static {}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->b()Lcom/kwad/sdk/core/preload/SplashPreloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/kwad/sdk/splashscreen/a/c;->b:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object v4, v4, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kwad/sdk/core/preload/SplashPreloadManager;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_7e

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7e
    invoke-direct {p0, v0, v2}, Lcom/kwad/sdk/splashscreen/a/c;->a(Ljava/lang/String;I)V

    :cond_81
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/i/b;->a(Lcom/kwad/sdk/core/i/c;)V

    :cond_8e
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->f:Landroid/os/Handler;

    new-instance v2, Lcom/kwad/sdk/splashscreen/a/c$1;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/splashscreen/a/c$1;-><init>(Lcom/kwad/sdk/splashscreen/a/c;)V

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a_()V
    .registers 3

    iget-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->c:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->c:Z

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_f
    return-void
.end method

.method protected c()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/i/b;->b(Lcom/kwad/sdk/core/i/c;)V

    :cond_10
    return-void
.end method

.method protected d()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->g:Z

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/c;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method
