.class public final Lcom/sigmob/windad/Drift/WindDriftAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

.field private final b:Lcom/sigmob/sdk/a/b;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/windad/Drift/WindDriftAdListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->c:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/sdk/a/b;

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;-><init>(Lcom/sigmob/windad/Drift/WindDriftAd;Lcom/sigmob/windad/Drift/WindDriftAd$1;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/sigmob/sdk/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/a/a;)V

    iput-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    iput-object p3, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    return-object v0
.end method

.method private a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdError;
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/windad/WindAdError;->valueOf(Ljava/lang/String;)Lcom/sigmob/windad/WindAdError;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    goto :goto_8
.end method

.method static synthetic a(Lcom/sigmob/windad/Drift/WindDriftAd;Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdError;
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/windad/Drift/WindDriftAd;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/sdk/a/b;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    return-object v0
.end method


# virtual methods
.method public action()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->a()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getIconFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->b()Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loadAd()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->c()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    sget-object v1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    goto :goto_9
.end method
