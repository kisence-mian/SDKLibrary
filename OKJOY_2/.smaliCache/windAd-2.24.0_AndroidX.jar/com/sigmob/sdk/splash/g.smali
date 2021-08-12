.class public final Lcom/sigmob/sdk/splash/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/b$a;
.implements Lcom/sigmob/sdk/splash/f$a;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/sigmob/sdk/splash/f;

.field private final c:Landroid/content/Context;

.field private d:Lcom/sigmob/sdk/splash/b;

.field private final e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private f:Landroid/view/ViewGroup;

.field private g:I

.field private h:Lcom/sigmob/sdk/common/models/AdStatus;

.field private i:Lcom/sigmob/sdk/splash/SplashAdView;

.field private j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private final k:Ljava/lang/Runnable;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/splash/b;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/g;->q:Z

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/g;->r:Z

    iput v0, p0, Lcom/sigmob/sdk/splash/g;->s:I

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/g;->t:Z

    new-instance v1, Lcom/sigmob/sdk/splash/g$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/splash/g$1;-><init>(Lcom/sigmob/sdk/splash/g;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->k:Ljava/lang/Runnable;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2e

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sigmob/sdk/common/a;->a(Landroid/view/WindowInsets;)V

    :cond_2e
    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    sget-object p1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    iput-object p2, p0, Lcom/sigmob/sdk/splash/g;->f:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    new-instance p1, Lcom/sigmob/sdk/splash/f;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/splash/f;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/a;->D()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_5c

    move v0, p2

    :cond_5c
    if-nez v0, :cond_61

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/g;->f()V

    :cond_61
    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/g;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/splash/g$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/sigmob/sdk/splash/g$2;-><init>(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "server_error"

    const/4 p2, 0x0

    invoke-static {p1, p4, p5, p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private a(ILjava/lang/String;Z)V
    .registers 7

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    :cond_e
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/g;->g()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1e

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_25

    :cond_1e
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a()V

    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz v0, :cond_34

    if-eqz p3, :cond_2f

    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/splash/b;->onSplashAdLoadFail(ILjava/lang/String;)V

    goto :goto_32

    :cond_2f
    invoke-interface {v0, p1, p2}, Lcom/sigmob/sdk/splash/b;->onSplashAdFailToPresent(ILjava/lang/String;)V

    :goto_32
    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    :cond_34
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/f;->b()V

    :cond_3b
    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->f()V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/splash/g$3;

    invoke-direct {v0, p0, p3, p4}, Lcom/sigmob/sdk/splash/g$3;-><init>(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;I)V

    invoke-static {p1, p4, p5, p2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/splash/g$4;

    invoke-direct {v0, p0, p4, p5}, Lcom/sigmob/sdk/splash/g$4;-><init>(Lcom/sigmob/sdk/splash/g;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p1, p3, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    new-instance v1, Lcom/sigmob/sdk/splash/SplashAdView;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sigmob/sdk/splash/SplashAdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->f:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v1, p2, p3}, Lcom/sigmob/sdk/splash/SplashAdView;->setBroadcastIdentifier(J)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/g;->l:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_28

    iget-object p2, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p2}, Lcom/sigmob/sdk/splash/SplashAdView;->b()V

    :cond_28
    iget-object p2, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    iget p3, p0, Lcom/sigmob/sdk/splash/g;->p:I

    if-eqz p3, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    invoke-virtual {p2, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->setShowAppLogo(Z)V

    iget-object p2, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p2, p1}, Lcom/sigmob/sdk/splash/SplashAdView;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/splash/SplashAdView;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/sdk/splash/g;)I
    .registers 1

    iget p0, p0, Lcom/sigmob/sdk/splash/g;->g:I

    return p0
.end method

.method static synthetic d(Lcom/sigmob/sdk/splash/g;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/g;->k:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/sigmob/sdk/splash/g;)I
    .registers 3

    iget v0, p0, Lcom/sigmob/sdk/splash/g;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sigmob/sdk/splash/g;->g:I

    return v0
.end method

.method static synthetic f(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object p0
.end method

.method static synthetic g(Lcom/sigmob/sdk/splash/g;)Lcom/sigmob/sdk/base/models/LoadAdRequest;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    return-object p0
.end method

.method private g()Z
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, "SPLASH_DISABLE_AD_HIDE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_23

    :try_start_10
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1b

    return v0

    :catchall_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method private h()V
    .registers 5

    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/g;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iput-boolean v1, p0, Lcom/sigmob/sdk/splash/g;->m:Z

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->f:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sigmob/sdk/splash/g;->n:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_e
    iget-boolean v0, p0, Lcom/sigmob/sdk/splash/g;->r:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_34

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/sigmob/sdk/splash/g;->n:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget v2, p0, Lcom/sigmob/sdk/splash/g;->s:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_3f

    :cond_34
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_3f

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v0, :cond_57

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2, v1, v3}, Lcom/sigmob/sdk/splash/d;->c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_52
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/f;->b()V

    :cond_57
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    :cond_61
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/g;->g()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->l:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_71

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_78

    :cond_71
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v0, :cond_78

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->a()V

    :cond_78
    :goto_78
    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->e()Lcom/sigmob/sdk/base/common/d;

    invoke-static {}, Lcom/sigmob/sdk/base/common/d;->f()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v4

    const-string v1, "play"

    const/4 v3, 0x0

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_RESOURCE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/splash/g;->a(ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/g;->h()V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 11

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    const-string v1, "0"

    const-string v2, "respond"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v3

    const-string v1, "request"

    const/4 v2, 0x0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    if-eq p1, v0, :cond_33

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v1

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/g;->a(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_33
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sigmob/sdk/splash/g;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    if-ne v1, p1, :cond_15

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->d()V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    if-eqz p1, :cond_15

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    :cond_15
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 7

    iget-object p2, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    const-string v1, "respond"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v2, "AD_UNIT_KEY"

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "broadcastIdentifier"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v3, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v2, v3, :cond_44

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/splash/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/g;->a()V

    goto :goto_59

    :cond_3b
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    if-eqz v1, :cond_59

    goto :goto_52

    :cond_44
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    if-eqz v1, :cond_59

    :goto_52
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 10

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/sigmob/sdk/splash/g;->a(ILjava/lang/String;Z)V

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v5

    const-string v2, "load"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected a(Z)V
    .registers 11

    const/4 v0, 0x0

    const-string v1, "request"

    const-string v2, "request_scene_type"

    if-nez p1, :cond_b0

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v3, :cond_91

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/common/f/e;->b(Ljava/lang/String;)Z

    move-object v3, p1

    check-cast v3, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object v3, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSplashFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    move-result-object v5

    iget-object v5, v5, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;->expired_time:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_52

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreate_time()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAdExpiredTime()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_52

    const/4 v5, 0x1

    goto :goto_53

    :cond_52
    const/4 v5, 0x0

    :goto_53
    if-eqz v4, :cond_91

    if-nez v5, :cond_91

    sget-object v4, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v4, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v5, v3

    const-string v3, "AD_UNIT_KEY"

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v3, "broadcastIdentifier"

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-direct {p0, p1, v5, v6}, Lcom/sigmob/sdk/splash/g;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;J)Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    if-eqz p1, :cond_91

    iget-object v3, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    if-eqz v3, :cond_91

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p1, v0, v4, v1}, Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void

    :cond_91
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "init"

    invoke-direct {p0, v3, v1, v0, p1}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/sigmob/sdk/rewardVideoAd/a;->c:Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-virtual {v0}, Lcom/sigmob/sdk/rewardVideoAd/a;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    goto :goto_ca

    :cond_b0
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object p1

    sget-object v3, Lcom/sigmob/sdk/rewardVideoAd/a;->e:Lcom/sigmob/sdk/rewardVideoAd/a;

    invoke-virtual {v3}, Lcom/sigmob/sdk/rewardVideoAd/a;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "play"

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    :goto_ca
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/SDKConfig;->getAdsUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {p1, v0, p0}, Lcom/sigmob/sdk/base/a/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v2, v1, v3}, Lcom/sigmob/sdk/splash/d;->d(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :cond_14
    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    if-ne v1, p1, :cond_21

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->e()V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    if-nez p1, :cond_1a

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    :cond_1a
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_12

    const-string v0, " next load"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/common/f/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sigmob/sdk/common/f/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq p1, v0, :cond_19

    return-void

    :cond_19
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/a;->D()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_2b

    move p1, v1

    goto :goto_2c

    :cond_2b
    move p1, v0

    :goto_2c
    if-nez p1, :cond_32

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/g;->f()V

    return-void

    :cond_32
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    if-eqz p1, :cond_3a

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3a
    iget-boolean p1, p0, Lcom/sigmob/sdk/splash/g;->t:Z

    if-eqz p1, :cond_c0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p1, v2, :cond_c0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/splash/g;->n:I

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput p1, p0, Lcom/sigmob/sdk/splash/g;->o:I

    iget v3, p0, Lcom/sigmob/sdk/splash/g;->n:I

    and-int/lit16 v4, v3, 0x200

    if-nez v4, :cond_b7

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_71

    goto :goto_b7

    :cond_71
    const/high16 v3, 0x8000000

    and-int/2addr p1, v3

    if-nez p1, :cond_c0

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-boolean v1, p0, Lcom/sigmob/sdk/splash/g;->r:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_ad

    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    iput v1, p0, Lcom/sigmob/sdk/splash/g;->s:I

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    or-int/lit8 v1, v1, 0x4

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_c0

    :cond_ad
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_c0

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_c0

    :cond_b7
    :goto_b7
    iput-boolean v1, p0, Lcom/sigmob/sdk/splash/g;->m:Z

    const/16 p1, 0x1206

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_c0
    :goto_c0
    sget-object p1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz p1, :cond_cb

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/b;->onSplashAdLoadSuccess()V

    :cond_cb
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->getDuration()I

    move-result p1

    if-lez p1, :cond_21

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->getDuration()I

    move-result p1

    iget v0, p0, Lcom/sigmob/sdk/splash/g;->g:I

    if-ge p1, v0, :cond_21

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p1}, Lcom/sigmob/sdk/splash/SplashAdView;->getDuration()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/splash/g;->g:I

    :cond_21
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->l:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_29
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    if-eqz p1, :cond_37

    iget v1, p0, Lcom/sigmob/sdk/splash/g;->g:I

    invoke-virtual {p1, v1}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->setVisibility(I)V

    :cond_37
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/b;->onSplashAdSuccessPresentScreen()V

    :cond_3e
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    if-nez p1, :cond_4d

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    :cond_4d
    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sigmob/sdk/splash/g;->a:Landroid/os/Handler;

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sigmob/sdk/splash/g;->q:Z

    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iget-boolean p1, p0, Lcom/sigmob/sdk/splash/g;->m:Z

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sigmob/sdk/splash/g;->m:Z

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->f:Landroid/view/ViewGroup;

    iget v0, p0, Lcom/sigmob/sdk/splash/g;->n:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    :cond_e
    iget-boolean p1, p0, Lcom/sigmob/sdk/splash/g;->r:Z

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_34

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/sdk/splash/g;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    iget v0, p0, Lcom/sigmob/sdk/splash/g;->s:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_3f

    :cond_34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3f

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_3f
    :goto_3f
    sget-object p1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz p1, :cond_4a

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/b;->onSplashAdClicked()V

    :cond_4a
    return-void
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/splash/g;->e:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/splash/f;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->b:Lcom/sigmob/sdk/splash/f;

    iget-object v0, v0, Lcom/sigmob/sdk/splash/f;->e:Lcom/sigmob/sdk/splash/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/d;->d()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/splash/g;->g:I

    iget-object v1, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/splash/SplashAdView;->setDuration(I)V

    iget-object v0, p0, Lcom/sigmob/sdk/splash/g;->i:Lcom/sigmob/sdk/splash/SplashAdView;

    invoke-virtual {v0}, Lcom/sigmob/sdk/splash/SplashAdView;->c()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/sigmob/sdk/splash/g;->a()V

    :cond_2d
    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    iget-object p1, p0, Lcom/sigmob/sdk/splash/g;->d:Lcom/sigmob/sdk/splash/b;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/sigmob/sdk/splash/b;->onSplashClosed()V

    :cond_7
    invoke-direct {p0}, Lcom/sigmob/sdk/splash/g;->h()V

    sget-object p1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/sdk/splash/g;->h:Lcom/sigmob/sdk/common/models/AdStatus;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sigmob/sdk/base/common/d;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/splash/g;->a(Z)V

    return-void
.end method

.method public f()V
    .registers 7

    iget-object v2, p0, Lcom/sigmob/sdk/splash/g;->j:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v4

    const-string v1, "play"

    const/4 v3, 0x0

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/splash/g;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_SPLASH_UNSUPPORT_ORIENTATION:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sigmob/sdk/splash/g;->a(ILjava/lang/String;Z)V

    invoke-direct {p0}, Lcom/sigmob/sdk/splash/g;->h()V

    return-void
.end method
