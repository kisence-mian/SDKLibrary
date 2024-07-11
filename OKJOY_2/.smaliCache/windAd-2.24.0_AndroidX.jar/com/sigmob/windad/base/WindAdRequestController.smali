.class public Lcom/sigmob/windad/base/WindAdRequestController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;
.implements Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;,
        Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;,
        Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;,
        Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;,
        Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ">;"
        }
    .end annotation
.end field

.field public adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:Ljava/lang/String;

.field e:J

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/sigmob/windad/WindAdRequest;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/base/WindVideoAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

.field private j:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

.field private k:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

.field private l:Landroid/os/Handler;

.field private m:I

.field private final n:Ljava/lang/String;

.field private o:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:J

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private final y:I

.field private final z:I


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    const-wide/16 v1, 0x3a98

    iput-wide v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->r:J

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->y:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->z:I

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->A:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    iput-object p5, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    new-instance p3, Ljava/util/HashMap;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Ljava/util/HashMap;-><init>(I)V

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:Ljava/util/Map;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->A:Ljava/lang/String;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:Ljava/util/Map;

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    iput-wide p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->c:J

    new-instance p1, Lcom/sigmob/windad/base/WindAdRequestController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/sigmob/windad/base/WindAdRequestController$2;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;I)I
    .registers 2

    iput p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:I

    return p1
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;J)J
    .registers 3

    iput-wide p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->p:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/sigmob/windad/WindAdError;)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$11;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$11;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$25;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$25;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V
    .registers 11

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v5, Lcom/sigmob/windad/base/WindAdRequestController$8;

    invoke-direct {v5, p0}, Lcom/sigmob/windad/base/WindAdRequestController$8;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    return-object p0
.end method

.method private b(Lcom/sigmob/windad/WindAdError;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$12;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$12;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method static synthetic c(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/sigmob/windad/WindAdError;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$22;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$22;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()V
    .registers 6

    const-string v0, "]"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:I

    if-eqz v2, :cond_1d

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1d

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:I

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_1f

    :cond_1d
    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    :goto_1f
    const-string v3, "[["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_86

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sigmob/sdk/common/models/ADStrategy;

    const-string v4, ",["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->A:Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8f} :catch_90

    goto :goto_95

    :catch_90
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->A:Ljava/lang/String;

    :goto_95
    return-void
.end method

.method static synthetic d(Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->d()V

    return-void
.end method

.method static synthetic e(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    return-object p0
.end method

.method private e()V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$9;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$9;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    const-string v2, "request"

    invoke-static {v2, v0, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindInit(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sigmob/windad/base/WindAdRequestController$10;

    invoke-direct {v4, p0}, Lcom/sigmob/windad/base/WindAdRequestController$10;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/common/e/o;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/e/o$a;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    invoke-static {v0}, Lcom/sigmob/sdk/common/d/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->p:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .registers 4

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ADStrategy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " internalLoadAd backupIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterLoad(Lcom/sigmob/sdk/common/models/ADStrategy;)Z

    :cond_43
    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$21;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$21;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "notify VideoAd Load Success"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$23;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$23;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$24;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$24;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->d()V

    :cond_15
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->A:Ljava/lang/String;

    return-object v0
.end method

.method public adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 5

    invoke-static {}, Lcom/sigmob/sdk/base/services/h;->a()Lcom/sigmob/sdk/base/services/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    const-string v2, "click"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/services/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$13;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$13;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$14;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$14;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidAdClickWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public adapterDidCloseRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Z)V
    .registers 7

    invoke-static {}, Lcom/sigmob/sdk/base/services/h;->a()Lcom/sigmob/sdk/base/services/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    const-string v2, "close"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/services/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->c:J

    sget-object v3, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    if-eqz p2, :cond_23

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$19;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$19;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    const-string v3, "reward"

    invoke-static {v3, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    :cond_23
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$20;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$20;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-static {v2, v0, p1, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    new-instance v0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V

    return-void
.end method

.method public adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->getStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/sdk/common/models/ADStrategy;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidFailToLoadRewardVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], error = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "load"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->g()V

    if-eqz p1, :cond_7d

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_d6

    :cond_7d
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v2, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v2, :cond_d6

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notready"

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sigmob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c1

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lcom/sigmob/windad/WindAdError;->getWindAdError(I)Lcom/sigmob/windad/WindAdError;

    move-result-object p1

    goto :goto_c3

    :cond_c1
    sget-object p1, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_REQUEST:Lcom/sigmob/windad/WindAdError;

    :goto_c3
    if-nez p1, :cond_c7

    sget-object p1, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    :cond_c7
    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    invoke-direct {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/WindAdError;)V

    :cond_d6
    return-void
.end method

.method public adapterDidFailToPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/sigmob/sdk/common/d/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    const-string v1, "start"

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getErrorCode()I

    move-result v2

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p1, v2, p2}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/WindAdError;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_39

    :catch_29
    move-exception p1

    sget-object p2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    return-void
.end method

.method public adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->getStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/sdk/common/models/ADStrategy;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v2, Lcom/sigmob/windad/base/WindAdRequestController$17;

    invoke-direct {v2, p0}, Lcom/sigmob/windad/base/WindAdRequestController$17;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    const-string v3, "ready"

    invoke-static {v3, v0, p1, v2}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->setReady()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterDidLoadAdSuccessRewardVideoAd() called with: strategy = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne p1, v0, :cond_5d

    const-string p1, "has send notify videoAd load success, don\'t do again"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void

    :cond_5d
    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq p1, v0, :cond_69

    const-string p1, "not do videoAd load ad"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void

    :cond_69
    sget-object p1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->h()V

    return-void
.end method

.method public adapterDidPlayCompleteRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 2

    return-void
.end method

.method public adapterDidPlayEndRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->i()V

    return-void
.end method

.method public adapterDidRreLoadFailRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_c

    const-string p1, "not do videoAd load ad"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$16;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$16;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public adapterDidRreLoadSuccessRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_c

    const-string p1, "not do videoAd load ad"

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$15;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$15;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public adapterDidStartPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->getStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/sdk/common/models/ADStrategy;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/base/services/h;->a()Lcom/sigmob/sdk/base/services/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/services/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->resetReady()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v3, Lcom/sigmob/windad/base/WindAdRequestController$18;

    invoke-direct {v3, p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController$18;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;I)V

    invoke-static {v2, v1, p1, v3}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adapterDidStartPlayingRewardVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "] "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->j()V

    return-void
.end method

.method public adapterLoad(Lcom/sigmob/sdk/common/models/ADStrategy;)Z
    .registers 9

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithADStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, " cls: "

    if-eqz v0, :cond_12b

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getReadyTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_50

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->isExpired()Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v0, p1}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isReady(Lcom/sigmob/sdk/common/models/ADStrategy;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_50

    :cond_20
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ready"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    const/16 v4, 0x7d0

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    iput v4, v3, Landroid/os/Message;->what:I

    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    iget-wide v5, p0, Lcom/sigmob/windad/base/WindAdRequestController;->r:J

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :try_start_67
    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->getAdapterVersion()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sigmob/sdk/common/SDKConfig;->getRequireAdapterVersion(Ljava/lang/String;)I

    move-result v4

    if-ge v3, v4, :cond_cb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "adapter version is error!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_ADAPTER_ERROR:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_ADAPTER_ERROR:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    return v1

    :cond_cb
    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isInit()Z

    move-result v3

    if-eqz v3, :cond_f1

    const-string v2, "load"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v4, Lcom/sigmob/windad/base/WindAdRequestController$6;

    invoke-direct {v4, p0}, Lcom/sigmob/windad/base/WindAdRequestController$6;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-static {v2, v3, p1, v4}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sigmob/windad/WindAdRequest;->setLoadId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    new-instance v3, Lcom/sigmob/windad/base/WindAdRequestController$7;

    invoke-direct {v3, p0, v0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$7;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_156

    :cond_f1
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->addLoadAdQueueWaitAdapterInitComplete(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/base/WindAdRequestController;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "is not have init success!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_67 .. :try_end_11c} :catchall_11d

    goto :goto_156

    :catchall_11d
    move-exception v0

    new-instance v2, Lcom/sigmob/windad/WindAdAdapterError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    goto :goto_156

    :cond_12b
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->addLoadAdQueueWaitAdapterInitComplete(Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/base/WindAdRequestController;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " can\'t find adapter !"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_156
    return v1
.end method

.method public autoload()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->c()V

    :cond_9
    return-void
.end method

.method protected b()V
    .registers 3

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ADStrategy;->resetReady()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method protected c()V
    .registers 6

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:I

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_17
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, " internalLoadAd  length %d, size %d, mMaxConcurrent %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:I

    :goto_42
    if-ge v3, v0, :cond_7d

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/ADStrategy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " internalLoadAd index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithADStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    invoke-virtual {p0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterLoad(Lcom/sigmob/sdk/common/models/ADStrategy;)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_7d

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_7d
    :goto_7d
    return-void
.end method

.method public destory()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:Ljava/util/Map;

    return-void
.end method

.method protected finalize()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finalize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->w(Ljava/lang/String;)V

    return-void
.end method

.method public getAdStatus()Lcom/sigmob/sdk/common/models/AdStatus;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    return-object v0
.end method

.method public getAdapterWithADStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->initializeChannelAdapter(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return-object v0
.end method

.method public getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sigmob/windad/base/WindVideoAdAdapter;

    return-object p1
.end method

.method public getReadyAdapter()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/windad/base/WindVideoAdAdapter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v3, v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_27
    return-object v0
.end method

.method public getReadyAdapter(Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;)V
    .registers 10

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/common/models/AdStatus;

    const-string v2, "READY_EMPTY"

    if-eq v0, v1, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adStatus not ready  is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_25

    invoke-interface {p1, v2}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onFailed(Ljava/lang/String;)V

    :cond_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "strategies is empty"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_3a

    const-string v0, "STRATEGY_EMPTY"

    invoke-interface {p1, v0}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onFailed(Ljava/lang/String;)V

    :cond_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "readyList is empty"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_4d

    invoke-interface {p1, v2}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onFailed(Ljava/lang/String;)V

    :cond_4d
    return-void

    :cond_4e
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    :cond_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v5, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v5, v4}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d4

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/models/ADStrategy;->isExpired()Z

    move-result v6

    if-nez v6, :cond_d4

    iget-object v6, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d4

    invoke-virtual {p0, v5}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v3

    const-string v5, "load Id "

    if-eqz v3, :cond_af

    invoke-virtual {v3, v4}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isReady(Lcom/sigmob/sdk/common/models/ADStrategy;)Z

    move-result v6

    if-eqz v6, :cond_af

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getReadyAdapter isReady true "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_d4

    :cond_af
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getReadyAdapter isReady false "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    move-object v3, v1

    :cond_d4
    :goto_d4
    invoke-virtual {v4}, Lcom/sigmob/sdk/common/models/ADStrategy;->isExpired()Z

    move-result v5

    iget-object v6, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v7, Lcom/sigmob/windad/base/WindAdRequestController$4;

    invoke-direct {v7, p0, v3, v5}, Lcom/sigmob/windad/base/WindAdRequestController$4;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/base/WindVideoAdAdapter;Z)V

    const-string v5, "askad"

    invoke-static {v5, v6, v4, v7}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    if-eqz v3, :cond_56

    if-eqz p1, :cond_56

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$5;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$5;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    const-string v2, "sdkopen"

    invoke-static {v2, v0, v4, v1}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-interface {p1, v3, v4}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onSuccess(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    return-void

    :cond_f8
    if-eqz p1, :cond_fd

    invoke-interface {p1, v2}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onFailed(Ljava/lang/String;)V

    :cond_fd
    return-void
.end method

.method public getReadyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    return-object v0
.end method

.method public getStrategies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ADStrategy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    return-object v0
.end method

.method public getStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/sdk/common/models/ADStrategy;
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_21
    return-object p1
.end method

.method public initializeChannelAdapter(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;
    .registers 8

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->reset()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "find already initialize Adapter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    goto/16 :goto_d6

    :cond_2b
    :try_start_2b
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sigmob/windad/base/WindVideoAdAdapter;

    if-ne v3, v4, :cond_d6

    const-string v3, "init"

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    new-instance v5, Lcom/sigmob/windad/base/WindAdRequestController$3;

    invoke-direct {v5, p0}, Lcom/sigmob/windad/base/WindAdRequestController$3;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-static {v3, v4, p1, v5}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindTracking(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    invoke-static {}, Lcom/sigmob/windad/base/WindVideoAdBridge;->Bridge()Lcom/sigmob/windad/base/WindVideoAdBridge;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    invoke-virtual {v3, v4}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeInitListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sigmob/windad/base/WindVideoAdBridge;->a(Ljava/util/Map;)V

    invoke-virtual {v3, p0}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeLoadListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;)V

    invoke-virtual {v3, p0}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeShowListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;)V

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sigmob/windad/base/WindVideoAdAdapter;
    :try_end_5f
    .catchall {:try_start_2b .. :try_end_5f} :catchall_d0

    :try_start_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeChannelAdapter "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->initWithWADVideoAdConnector(Lcom/sigmob/windad/base/WindVideoAdConnector;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v1

    if-eqz v1, :cond_9c

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

    :cond_9c
    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeSdk: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " cls: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_5f .. :try_end_cb} :catchall_cd

    move-object v1, v2

    goto :goto_d6

    :catchall_cd
    move-exception p1

    move-object v1, v2

    goto :goto_d1

    :catchall_d0
    move-exception p1

    :goto_d1
    const-string v0, "can\'t init adapter"

    invoke-static {v0, p1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d6
    :goto_d6
    return-object v1
.end method

.method public isReady()Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v2, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/common/models/ADStrategy;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithADStrategy(Lcom/sigmob/sdk/common/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isReady(Lcom/sigmob/sdk/common/models/ADStrategy;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReady true "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "load Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_5e

    const/4 v0, 0x1

    return v0

    :catchall_5e
    move-exception v0

    :cond_5f
    const/4 v0, 0x0

    return v0
.end method

.method public judgeWhetherExcuteLoadRequest()Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
    .registers 5

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getLoadPeriodTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->c:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    const-string v0, "load interval Time error"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/common/models/AdStatus;

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_2e

    goto :goto_55

    :cond_2e
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    if-ne v0, v1, :cond_37

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterLoadingBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0

    :cond_37
    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->getLoadExpired()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_52

    const-string v0, "Ad is Ready,you can play it directly. "

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterReadyLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0

    :cond_52
    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterKeepGoing:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0

    :cond_55
    :goto_55
    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterPlayBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    return-object v0
.end method

.method public loadAd()V
    .registers 9

    sget-boolean v0, Lcom/sigmob/windad/WindAds;->isInited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_32

    const-string v0, "WindAds not initialize"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->v:I

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v0

    const-string v2, "load"

    const-string v3, "WindVideoAdRequest can\'t is null"

    invoke-static {v2, v0, v3}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->WindError(Ljava/lang/String;ILjava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWindError;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->setAdtype(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityWindError;->commit()V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_NOT_INIT:Lcom/sigmob/windad/WindAdError;

    invoke-direct {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void

    :cond_32
    invoke-static {}, Lcom/sigmob/sdk/common/a;->b()Z

    move-result v0

    if-nez v0, :cond_66

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    const/4 v4, 0x0

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v5

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v2, "load"

    invoke-static/range {v2 .. v7}, Lcom/sigmob/windad/common/PointEntityWindUtils;->WindError(Ljava/lang/String;Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;ILjava/lang/String;Lcom/sigmob/windad/common/PointEntityWindUtils$OnPointEntityExtraInfo;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_GDPR_DENIED:Lcom/sigmob/windad/WindAdError;

    invoke-direct {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/WindAdError;)V

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->t:I

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    return-void

    :cond_66
    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->judgeWhetherExcuteLoadRequest()Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    move-result-object v0

    sget-object v2, Lcom/sigmob/windad/base/WindAdRequestController$26;->a:[I

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_106

    goto/16 :goto_105

    :pswitch_77
    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->x:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindFilterLoadInterval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/sigmob/windad/WindAdError;

    goto :goto_ef

    :pswitch_a0
    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindFilterLoadingBreak "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_105

    :pswitch_c7
    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindFilterPlayBreak "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->ERROR_AD_LOAD_FAIL_PLAYING:Lcom/sigmob/windad/WindAdError;

    :goto_ef
    invoke-direct {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/WindAdError;)V

    goto :goto_105

    :pswitch_f3
    const-string v0, "WindFilterReadyLoadInterval"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->loadAd(Z)V

    goto :goto_105

    :pswitch_fc
    const-string v0, "WindFilterKeepGoing"

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->loadAd(Z)V

    :goto_105
    return-void

    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_f3
        :pswitch_c7
        :pswitch_a0
        :pswitch_77
    .end packed-switch
.end method

.method public loadAd(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->c:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-static {}, Lcom/sigmob/sdk/base/services/h;->a()Lcom/sigmob/sdk/base/services/h;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    const-string v2, "load"

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/sdk/base/services/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/common/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/common/models/AdStatus;

    invoke-static {}, Lcom/sigmob/sdk/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/SDKConfig;->loadAdTimeout()J

    move-result-wide v0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x3e8

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;->onVideoAdLoadStart(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "request"

    invoke-static {v2, v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->WindTracking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/common/mta/PointEntityWind;

    move-result-object v0

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_count(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoading_filters(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->t:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setGdpr_filters(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setPlaying_filters(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->x:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setInterval_filters(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setLoad_id(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->v:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->setInit_filters(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/PointEntityWind;->commit()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:I

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->t:I

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->x:I

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->v:I

    if-nez p1, :cond_c9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load ad not use lastStrargy loadId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:J

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->e()V

    goto :goto_e4

    :cond_c9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load ad use lastStrargy loadId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/logger/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->c()V

    :goto_e4
    return-void
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/windad/base/WindVideoAdAdapter;

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

    goto :goto_c

    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_43

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/common/a;->a(Landroid/view/WindowInsets;)V

    :cond_43
    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$1;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$1;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/util/HashMap;Lcom/sigmob/windad/base/WindAdRequestController;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getReadyAdapter(Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;)V

    return-void
.end method
