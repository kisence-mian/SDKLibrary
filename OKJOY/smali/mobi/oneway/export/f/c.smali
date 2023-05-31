.class public Lmobi/oneway/export/f/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lmobi/oneway/export/plugin/BaseAd;

.field private c:Ljava/lang/Class;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmobi/oneway/export/f/c;->f:J

    iput p1, p0, Lmobi/oneway/export/f/c;->a:I

    iput-object p2, p0, Lmobi/oneway/export/f/c;->c:Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/f/c;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmobi/oneway/export/f/c;->j:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 5

    iget v0, p0, Lmobi/oneway/export/f/c;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    new-instance v0, Lmobi/oneway/export/f/b;

    iget-object v1, p0, Lmobi/oneway/export/f/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lmobi/oneway/export/f/c;->d:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2}, Lmobi/oneway/export/f/b;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;)V

    move-object p1, v0

    :cond_f
    return-object p1
.end method

.method private a(Landroid/content/Context;)Landroid/content/Context;
    .registers 5

    iget v0, p0, Lmobi/oneway/export/f/c;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    new-instance v0, Lmobi/oneway/export/f/g;

    iget-object v1, p0, Lmobi/oneway/export/f/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lmobi/oneway/export/f/c;->d:Landroid/content/Context;

    invoke-direct {v0, p1, v1, v2}, Lmobi/oneway/export/f/g;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V

    move-object p1, v0

    :cond_f
    return-object p1
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    sget-object v0, Lmobi/oneway/export/enums/PluginErrorType;->shell_error_reflectMethod:Lmobi/oneway/export/enums/PluginErrorType;

    invoke-static {p1}, Lmobi/oneway/export/h/g;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/oneway/export/e/c;->a(Lmobi/oneway/export/enums/PluginErrorType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lmobi/oneway/export/f/c;->a:I

    return v0
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lmobi/oneway/export/f/c;->g:J

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V
    .registers 16

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v5, 0x0

    if-eqz p4, :cond_11

    new-instance v5, Lmobi/oneway/export/c/h;

    sget-object v0, Lmobi/oneway/export/enums/AdType;->splash:Lmobi/oneway/export/enums/AdType;

    iget v1, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v5, p4, v0, p2, v1}, Lmobi/oneway/export/c/h;-><init>(Lmobi/oneway/export/AdListener/OWSplashAdListener;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lmobi/oneway/export/plugin/BaseAd;->showSplashAd(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;Lmobi/oneway/export/AdListener/OWSplashAdListener;J)V

    goto :goto_4
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V
    .registers 7

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p3, :cond_11

    new-instance v0, Lmobi/oneway/export/c/g;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p3, v1, p2, v2}, Lmobi/oneway/export/c/g;-><init>(Lmobi/oneway/export/AdListener/AdMonitor;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lmobi/oneway/export/plugin/BaseAd;->initRewardAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V

    goto :goto_4
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
    .registers 7

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p3, :cond_11

    new-instance v0, Lmobi/oneway/export/c/d;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p3, v1, p2, v2}, Lmobi/oneway/export/c/d;-><init>(Lmobi/oneway/export/AdListener/OWInteractiveAdListener;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lmobi/oneway/export/plugin/BaseAd;->initInteractiveAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmobi/oneway/export/f/c;->d:Landroid/content/Context;

    iput-object p2, p0, Lmobi/oneway/export/f/c;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V
    .registers 7

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p3, :cond_11

    new-instance v0, Lmobi/oneway/export/c/c;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->feed:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p3, v1, p2, v2}, Lmobi/oneway/export/c/c;-><init>(Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/c;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lmobi/oneway/export/plugin/BaseAd;->loadFeedAd(Landroid/content/Context;Ljava/lang/String;Lmobi/oneway/export/AdListener/feed/OWFeedAdListener;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/f/c;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lmobi/oneway/export/f/c;->c:Ljava/lang/Class;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/plugin/BaseAd;

    iput-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V
    .registers 6

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_11

    new-instance v0, Lmobi/oneway/export/c/g;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->rewarded:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p2, v1, p1, v2}, Lmobi/oneway/export/c/g;-><init>(Lmobi/oneway/export/AdListener/AdMonitor;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v1, p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->setRewardAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWRewardedAdListener;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V
    .registers 6

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_11

    new-instance v0, Lmobi/oneway/export/c/d;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interactive:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p2, v1, p1, v2}, Lmobi/oneway/export/c/d;-><init>(Lmobi/oneway/export/AdListener/OWInteractiveAdListener;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v1, p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->setInteractiveAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInteractiveAdListener;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lmobi/oneway/export/f/c;->i:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmobi/oneway/export/f/c;->l:Ljava/util/List;

    return-void
.end method

.method public a(Lmobi/oneway/export/enums/AdType;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lmobi/oneway/export/f/c$1;->a:[I

    invoke-virtual {p1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    goto :goto_4

    :pswitch_11
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2, p3, p4}, Lmobi/oneway/export/plugin/BaseAd;->showRewardAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_17
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2, p3, p4}, Lmobi/oneway/export/plugin/BaseAd;->showInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_1d
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2, p3, p4}, Lmobi/oneway/export/plugin/BaseAd;->showInterstitialImageAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_23
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2, p3, p4}, Lmobi/oneway/export/plugin/BaseAd;->showInteractiveAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
    .end packed-switch
.end method

.method public a(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0, p2, v1}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, p2, v1}, Lmobi/oneway/export/f/c;->b(Ljava/lang/String;Z)V

    sget-object v0, Lmobi/oneway/export/f/c$1;->a:[I

    invoke-virtual {p1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->loadRewardAd(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_1e
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->loadInterstitialAd(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_24
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->loadInterstitialImageAd(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2a
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->loadInteractiveAd(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1e
        :pswitch_24
        :pswitch_2a
    .end packed-switch
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p1}, Lmobi/oneway/export/plugin/BaseAd;->setDebugMode(Z)V

    goto :goto_4
.end method

.method public a(Lmobi/oneway/export/enums/AdType;)Z
    .registers 6

    const/4 v1, 0x0

    const-string v0, ""

    sget-object v2, Lmobi/oneway/export/f/c$1;->a:[I

    invoke-virtual {p1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    :goto_e
    :try_start_e
    iget-object v2, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2f} :catch_40

    move-result v0

    :goto_30
    return v0

    :pswitch_31
    const-string v0, "hasRewardAd"

    goto :goto_e

    :pswitch_34
    const-string v0, "hasInterstitialAd"

    goto :goto_e

    :pswitch_37
    const-string v0, "hasInterstitialImageAd"

    goto :goto_e

    :pswitch_3a
    const-string v0, "hasInteractiveAd"

    goto :goto_e

    :pswitch_3d
    const-string v0, "hasFeedAd"

    goto :goto_e

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0}, Lmobi/oneway/export/f/c;->a(Ljava/lang/Exception;)V

    :cond_47
    move v0, v1

    goto :goto_30

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method

.method public b()J
    .registers 5

    iget-wide v0, p0, Lmobi/oneway/export/f/c;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0}, Lmobi/oneway/export/plugin/BaseAd;->getCrc()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    goto :goto_12
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V
    .registers 7

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p3, :cond_11

    new-instance v0, Lmobi/oneway/export/c/e;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p3, v1, p2, v2}, Lmobi/oneway/export/c/e;-><init>(Lmobi/oneway/export/AdListener/AdMonitor;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lmobi/oneway/export/plugin/BaseAd;->initInterstitialAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V

    goto :goto_4
.end method

.method public b(Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V
    .registers 6

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_11

    new-instance v0, Lmobi/oneway/export/c/e;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitial:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p2, v1, p1, v2}, Lmobi/oneway/export/c/e;-><init>(Lmobi/oneway/export/AdListener/AdMonitor;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v1, p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->setInterstitialAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialAdListener;)V

    goto :goto_4
.end method

.method public b(Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lmobi/oneway/export/f/c;->j:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lmobi/oneway/export/f/c;->k:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/f/c;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmobi/oneway/export/f/c;->a(Ljava/lang/String;Z)V

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p2}, Lmobi/oneway/export/f/d;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lmobi/oneway/export/f/c$1;->a:[I

    invoke-virtual {p1}, Lmobi/oneway/export/enums/AdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    goto :goto_5

    :pswitch_1c
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->isRewardAdReady(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :pswitch_23
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->isInterstitialAdReady(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :pswitch_2a
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->isInterstitialImageAdReady(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :pswitch_31
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p2}, Lmobi/oneway/export/plugin/BaseAd;->isInteractiveAdReady(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_23
        :pswitch_2a
        :pswitch_31
    .end packed-switch
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lmobi/oneway/export/f/c;->g:J

    return-wide v0
.end method

.method public c(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V
    .registers 7

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p3, :cond_11

    new-instance v0, Lmobi/oneway/export/c/f;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p3, v1, p2, v2}, Lmobi/oneway/export/c/f;-><init>(Lmobi/oneway/export/AdListener/AdMonitor;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-direct {p0, p1}, Lmobi/oneway/export/f/c;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lmobi/oneway/export/plugin/BaseAd;->initInterstitialImageAd(Landroid/app/Activity;Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V

    goto :goto_4
.end method

.method public c(Ljava/lang/String;Lmobi/oneway/export/AdListener/AdMonitor;)V
    .registers 6

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_11

    new-instance v0, Lmobi/oneway/export/c/f;

    sget-object v1, Lmobi/oneway/export/enums/AdType;->interstitialimage:Lmobi/oneway/export/enums/AdType;

    iget v2, p0, Lmobi/oneway/export/f/c;->a:I

    invoke-direct {v0, p2, v1, p1, v2}, Lmobi/oneway/export/c/f;-><init>(Lmobi/oneway/export/AdListener/AdMonitor;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    :cond_11
    iget-object v1, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v1, p1, v0}, Lmobi/oneway/export/plugin/BaseAd;->setInterstitialImageAdListener(Ljava/lang/String;Lmobi/oneway/export/AdListener/OWInterstitialImageAdListener;)V

    goto :goto_4
.end method

.method public c(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    invoke-virtual {v0, p1, p2}, Lmobi/oneway/export/plugin/BaseAd;->destoryAd(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public c(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/f/c;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lmobi/oneway/export/f/c;->b(Ljava/lang/String;Z)V

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/f/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmobi/oneway/export/feed/IFeedAd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmobi/oneway/export/f/c;->l:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/f/c;->k:Z

    return v0
.end method

.method public g()Lmobi/oneway/export/plugin/BaseAd;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/f/c;->b:Lmobi/oneway/export/plugin/BaseAd;

    return-object v0
.end method
