.class public Lcom/kwad/sdk/splashscreen/a/b;
.super Lcom/kwad/sdk/mvp/Presenter;

# interfaces
.implements Lcom/kwad/sdk/core/i/c;


# instance fields
.field protected a:Lcom/kwad/sdk/splashscreen/c;

.field private b:Landroid/os/Handler;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

.field private i:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/mvp/Presenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/a/b;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/splashscreen/a/b;->e:I

    return p1
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/a/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/splashscreen/a/b;->g:Z

    return p0
.end method

.method static synthetic a(Lcom/kwad/sdk/splashscreen/a/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/splashscreen/a/b;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/kwad/sdk/splashscreen/a/b;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/splashscreen/a/b;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method private m()V
    .registers 6

    iget v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->f:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/kwad/sdk/splashscreen/a/b;->i:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->e:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->a()V

    const-string v0, "SkipAdPresenter"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kwad/sdk/splashscreen/a/b;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/splashscreen/c;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_splash_preload_tips:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->d:Lcom/kwad/sdk/core/view/AdBaseFrameLayout;

    sget v1, Lcom/kwad/sdk/R$id;->ksad_splash_skip_time:I

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/view/AdBaseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->d:Landroid/widget/TextView;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdTemplate;->adInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adPreloadInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iput-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->h:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->skipSecond:I

    iput v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->f:I

    iput v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->e:I

    :cond_57
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->h:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    if-eqz v1, :cond_7a

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadTips:Ljava/lang/String;

    invoke-static {v1}, Lcom/kwad/sdk/utils/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kwad/sdk/splashscreen/a/b;->h:Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdPreloadInfo;->preloadTips:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7f

    :cond_7a
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->i:J

    iget v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->f:I

    iput v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->e:I

    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v1, v1, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v1, p0}, Lcom/kwad/sdk/core/i/b;->a(Lcom/kwad/sdk/core/i/c;)V

    invoke-direct {p0}, Lcom/kwad/sdk/splashscreen/a/b;->m()V

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->skipTips:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a5

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->d:Landroid/widget/TextView;

    const-string v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ae

    :cond_a5
    iget-object v1, p0, Lcom/kwad/sdk/splashscreen/a/b;->d:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->skipTips:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_ae
    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/b$1;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/splashscreen/a/b$1;-><init>(Lcom/kwad/sdk/splashscreen/a/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a_()V
    .registers 7

    const-string v0, "SkipAdPresenter"

    const-string v1, "onPageVisible"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adSplashInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdSplashInfo;->skipSecond:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c

    :cond_24
    iget v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->e:I

    if-ltz v0, :cond_3c

    iget-boolean v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->g:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/splashscreen/a/b$2;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/splashscreen/a/b$2;-><init>(Lcom/kwad/sdk/splashscreen/a/b;)V

    iget v2, p0, Lcom/kwad/sdk/splashscreen/a/b;->e:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void
.end method

.method protected c()V
    .registers 3

    invoke-super {p0}, Lcom/kwad/sdk/mvp/Presenter;->c()V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->a:Lcom/kwad/sdk/splashscreen/c;

    iget-object v0, v0, Lcom/kwad/sdk/splashscreen/c;->h:Lcom/kwad/sdk/core/i/b;

    invoke-interface {v0, p0}, Lcom/kwad/sdk/core/i/b;->b(Lcom/kwad/sdk/core/i/c;)V

    iget-object v0, p0, Lcom/kwad/sdk/splashscreen/a/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method
