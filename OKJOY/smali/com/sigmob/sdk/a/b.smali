.class public final Lcom/sigmob/sdk/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/c/l;
.implements Lcom/sigmob/sdk/base/common/s;


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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "placement is empty"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_15

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-interface {p3, v0, p2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    if-nez p1, :cond_25

    const-string v0, "context is null"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_15

    sget-object v0, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-interface {p3, v0, p2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    goto :goto_15

    :cond_25
    iput-object p1, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/a/b;->a:Lcom/sigmob/sdk/a/a;

    new-instance v0, Lcom/sigmob/sdk/a/d;

    invoke-direct {v0, p0}, Lcom/sigmob/sdk/a/d;-><init>(Lcom/sigmob/sdk/base/common/s;)V

    iput-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    goto :goto_15
.end method

.method static synthetic a(Lcom/sigmob/sdk/a/b;)Lcom/sigmob/sdk/a/a;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->a:Lcom/sigmob/sdk/a/a;

    return-object v0
.end method

.method private a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDriftError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :placementId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/a/b$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sigmob/sdk/a/b$5;-><init>(Lcom/sigmob/sdk/a/b;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_category"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_message"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "9"

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object v1, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_10

    const-string v1, "sub_category"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object v1, Lcom/sigmob/sdk/base/common/Constants;->AD_TYPE:Ljava/lang/String;

    const-string v2, "3"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "sigmob"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_id"

    invoke-interface {v6, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "5"

    const/4 v3, 0x3

    move-object v1, p3

    move-object v4, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/sdk/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/a/c;->b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/a/d;->a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/util/Map;)V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->a:Lcom/sigmob/sdk/a/a;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->a:Lcom/sigmob/sdk/a/a;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/sdk/base/models/SigmobError;

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/sdk/a/a;->onDriftAdError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    goto :goto_24
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x0

    const-string v0, "click"

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v1, v2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/a/b$6;

    invoke-direct {v1, p0, p2}, Lcom/sigmob/sdk/a/b$6;-><init>(Lcom/sigmob/sdk/a/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_18
    return-void

    :cond_19
    const-class v2, Lcom/sigmob/sdk/base/common/AdActivity;

    iget-object v3, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v4, v0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/sigmob/sdk/base/common/AdActivity;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/sigmob/sdk/base/models/BaseAdUnit;JLjava/lang/String;)V

    goto :goto_18
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    const/4 v0, 0x0

    const-string v1, "loadstart"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 7

    const-string v0, "1"

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AD_UNIT_KEY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "broadcastIdentifier"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getRequest_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, Lcom/sigmob/sdk/a/d;->a(Landroid/content/Context;Ljava/util/Map;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V
    .registers 6

    const-string v0, "0"

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->f:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->f:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/a/b$2;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/a/b$2;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    .registers 9

    const/4 v3, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v1

    invoke-direct {p0, v0, v3, v1, p2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;ILjava/lang/String;)V

    const-string v0, "0"

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->c:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sigmob/sdk/a/b;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->f:Lcom/sigmob/sdk/a/d;

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/d;->c()Ljava/io/File;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-static {v0}, Lcom/sigmob/sdk/a/c;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    const-string v0, "1"

    const-string v1, "loadend"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/a/b$1;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/a/b$1;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    const/4 v3, 0x3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/SDKConfig;->getAdsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p0}, Lcom/sigmob/sdk/base/c/k;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->g:Lcom/sigmob/sdk/a/c;

    iget-object v1, p0, Lcom/sigmob/sdk/a/b;->d:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sigmob/sdk/a/c;->a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/a/b$3;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/a/b$3;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
    .registers 5

    const/4 v0, 0x0

    const-string v1, "close_drift"

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/a/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    const-string v1, "close"

    iget-object v2, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    iget-object v3, p0, Lcom/sigmob/sdk/a/b;->c:Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadslot_id()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sigmob/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/sdk/a/b$4;

    invoke-direct {v1, p0}, Lcom/sigmob/sdk/a/b$4;-><init>(Lcom/sigmob/sdk/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    return-void
.end method
