.class public final Lcom/sigmob/sdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/a/b$a;
.implements Lcom/sigmob/sdk/base/common/k$a;


# instance fields
.field private a:Lcom/sigmob/sdk/a/a;

.field private b:Landroid/os/Handler;

.field private c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Lcom/sigmob/sdk/a/d;

.field private g:Lcom/sigmob/sdk/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/a/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p1, "placement is empty"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_1f

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p1

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_PLACEMENTID_EMPTY:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0, p2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void

    :cond_20
    if-nez p1, :cond_33

    const-string p1, "context is null"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_32

    sget-object v0, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v0

    invoke-interface {p3, v0, p1, p2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void

    :cond_33
    iput-object p1, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/a/b;->a:Lcom/sigmob/sdk/a/a;

    new-instance p1, Lcom/sigmob/sdk/a/d;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/a/d;-><init>(Lcom/sigmob/sdk/base/common/k$a;)V

    iput-object p1, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/b;->a:Lcom/sigmob/sdk/a/a;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDriftError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :placementId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/a/b$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/sdk/a/b$9;-><init>(Lcom/sigmob/sdk/a/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/a/b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    if-eqz v2, :cond_1f

    iget-object v3, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/sigmob/sdk/a/c;->b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/a/d;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    goto :goto_30

    :cond_1f
    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->a:Lcom/sigmob/sdk/a/a;

    if-eqz v0, :cond_30

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    const-string v3, "ad is null or other params is null"

    invoke-interface {v0, v1, v3, v2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 8

    new-instance p3, Lcom/sigmob/sdk/a/b$7;

    invoke-direct {p3, p0}, Lcom/sigmob/sdk/a/b$7;-><init>(Lcom/sigmob/sdk/a/b;)V

    const-string v0, "respond"

    const-string v1, "0"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    new-instance p3, Lcom/sigmob/sdk/a/b$8;

    invoke-direct {p3, p0}, Lcom/sigmob/sdk/a/b$8;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-static {v0, p1, p2, v2, p3}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/sdk/a/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    const-string v0, "start"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 5

    const-string p2, "respond"

    const-string v0, "1"

    invoke-static {p2, v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object p1, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AD_UNIT_KEY"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "broadcastIdentifier"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/sigmob/sdk/a/d;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 6

    const-string v0, "loadend"

    const-string v1, "0"

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    sget-object p1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result p1

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v2, Lcom/sigmob/sdk/a/b$2;

    invoke-direct {v2, p0}, Lcom/sigmob/sdk/a/b$2;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-static {v0, p1, p2, v1, v2}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    iget-object p1, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/a/b$3;

    invoke-direct {v0, p0, p2}, Lcom/sigmob/sdk/a/b$3;-><init>(Lcom/sigmob/sdk/a/b;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/d;->c()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/a/c;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    const-string v0, "loadend"

    const-string v1, "1"

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/a/b$1;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/a/b$1;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .registers 11

    new-instance v0, Lcom/sigmob/sdk/a/b$6;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/a/b$6;-><init>(Lcom/sigmob/sdk/a/b;)V

    const-string v1, "request"

    const-string v2, "init"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/s$a;)V

    new-instance v0, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/SDKConfig;->getAdsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/sigmob/sdk/base/a/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    iget-object p1, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/sigmob/sdk/a/c;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/a/b$4;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/a/b$4;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iput-object v0, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    return-void
.end method

.method public d(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 2

    return-void
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const-string v1, "close_drift"

    const-string v2, "1"

    invoke-static {v1, v2, v0}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    const-string v1, "close"

    invoke-static {v1, v0, p1}, Lcom/sigmob/sdk/base/common/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object p1, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/sigmob/sdk/a/b$5;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/a/b$5;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14
    return-void
.end method
