.class public final Lcom/sigmob/windad/Drift/WindDriftAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;
    }
.end annotation


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

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    return-object p0
.end method

.method private a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;
    .registers 4

    new-instance v0, Lcom/sigmob/windad/WindAdAdapterError;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/windad/Drift/WindDriftAd;ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/sigmob/windad/Drift/WindDriftAd;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/sdk/a/b;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    return-object p0
.end method


# virtual methods
.method public action()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->a()V

    goto :goto_1e

    :cond_8
    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_1e

    new-instance v1, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    const-string v3, "ad is null"

    invoke-direct {v1, v2, v3}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdAdapterError;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public getIconFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->b()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadAd()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->b:Lcom/sigmob/sdk/a/b;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->c()V

    goto :goto_1e

    :cond_8
    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_1e

    new-instance v1, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    const-string v3, "ad is null"

    invoke-direct {v1, v2, v3}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdAdapterError;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method
