.class public Lcom/sigmob/windad/base/WindAdRequestController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;
.implements Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;


# static fields
.field static final a:Ljava/lang/String; = "STRATEGY_EMPTY"

.field static final b:Ljava/lang/String; = "READY_EMPTY"

.field static final c:Ljava/lang/String; = "NOT_ADAPTER"


# instance fields
.field public adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/ADStrategy;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:J

.field g:Ljava/lang/String;

.field h:J

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/WindAdAdapterError;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcom/sigmob/windad/WindAdRequest;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/windad/base/WindVideoAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

.field private m:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

.field private n:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

.field private o:Landroid/os/Handler;

.field private p:I

.field private final q:Ljava/lang/String;

.field private r:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:J

.field private w:I

.field private final x:I

.field private final y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;)V
    .registers 12

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->p:I

    iput v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->v:J

    iput v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->x:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->y:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->z:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    iput-object p5, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->r:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->z:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-virtual {p1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iput-wide v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    iput-wide v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:J

    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$2;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;I)I
    .registers 2

    iput p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->p:I

    return p1
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;J)J
    .registers 4

    iput-wide p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->v:J

    return-wide p1
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/sigmob/windad/WindAdError;)V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$4;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$4;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method static synthetic a(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    return-void
.end method

.method private a(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$13;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$13;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 14

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p6, :cond_2f

    const-string v1, "platform"

    invoke-virtual {p6}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_channel_id"

    invoke-virtual {p6}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_appid"

    invoke-virtual {p6}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_placement_id"

    invoke-virtual {p6}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "load_id"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    const-string v1, "sub_category"

    invoke-interface {v6, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "7"

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    return-object v0
.end method

.method private b(Lcom/sigmob/windad/WindAdError;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$9;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$9;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method private c(Lcom/sigmob/windad/WindAdError;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$10;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$10;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/WindAdError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->d()V

    return-void
.end method

.method static synthetic d(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    return-object v0
.end method

.method private d()V
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->z:Ljava/lang/String;

    :cond_32
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_38
    return-void
.end method

.method private e()V
    .registers 8

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/Constants;->AD_TYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "2"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getStrategyUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sigmob/windad/base/WindAdRequestController$3;

    invoke-direct {v4, p0}, Lcom/sigmob/windad/base/WindAdRequestController$3;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/c/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/c/n;)V

    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2d
    invoke-static {v1}, Lcom/sigmob/sdk/base/common/c/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .registers 4

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " internalLoadAd backupIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterLoad(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_43
    return-void
.end method

.method private h()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$8;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$8;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "notify VideoAd Load Success"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$11;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$11;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$12;

    invoke-direct {v1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$12;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->d()V

    :cond_b
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->z:Ljava/lang/String;

    return-object v0
.end method

.method public adapterDidAdClickWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 9

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_10

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClick:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "platform"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vlist"

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->A:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$5;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$5;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidAdClickWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public adapterDidCloseRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Z)V
    .registers 11

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v2, "close"

    invoke-virtual {v0, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Ljava/lang/String;)V

    iput-wide v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:J

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusClose:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-wide v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_78

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v2, "category"

    const-string v3, "reward"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vlist"

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load_id"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_channel_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_appid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->D:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_78
    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v2, "platform"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vlist"

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load_id"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_channel_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_appid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->z:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    new-instance v0, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/rewardedVideo/WindRewardInfo;)V

    return-void
.end method

.method public adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 11

    const/16 v7, 0x7d0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidFailToLoadRewardVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

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

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const-string v1, "load"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    invoke-virtual {v0, v7, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->g()V

    if-eqz p1, :cond_83

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_bf

    :cond_83
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v0, v1, :cond_bf

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    const-string v1, "notready"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/sigmob/windad/WindAdError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/windad/WindAdError;

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/WindAdError;)V

    :cond_bf
    return-void
.end method

.method public adapterDidFailToPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V
    .registers 11

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    sget-object v7, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_AD_PLAY:Lcom/sigmob/windad/WindAdError;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/c/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sigmob/windad/WindAdError;->setMessage(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/common/b/b;->h:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    invoke-virtual {p2}, Lcom/sigmob/windad/WindAdAdapterError;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    invoke-direct {p0, v7}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/WindAdError;)V

    return-void
.end method

.method public adapterDidLoadAdSuccessRewardVideoAd(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 10

    const/16 v7, 0x7d0

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    invoke-virtual {v1, v7, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "category"

    const-string v2, "ready"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_category"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getLoadReadyCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vlist"

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_channel_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_appid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->m:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidLoadAdSuccessRewardVideoAd() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-ne v0, v1, :cond_b4

    const-string v0, "has send notify videoAd load success, don\'t do again"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :goto_b3
    return-void

    :cond_b4
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_c0

    const-string v0, "not do videoAd load ad"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    goto :goto_b3

    :cond_c0
    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->h()V

    goto :goto_b3
.end method

.method public adapterDidPlayCompleteRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 2

    return-void
.end method

.method public adapterDidPlayEndRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->i()V

    return-void
.end method

.method public adapterDidRreLoadFailRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_c

    const-string v0, "not do videoAd load ad"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$7;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$7;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public adapterDidRreLoadSuccessRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_c

    const-string v0, "not do videoAd load ad"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    new-instance v1, Lcom/sigmob/windad/base/WindAdRequestController$6;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$6;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public adapterDidStartPlayingRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 9

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_10

    :goto_f
    return-void

    :cond_10
    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusPlaying:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sub_category"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vlist"

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ad_scene"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->s:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_channel_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_appid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getSig_placement_id()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->h:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adapterDidStartPlayingRewardVideoAdWithStrategy() called with: strategy = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->j()V

    goto/16 :goto_f
.end method

.method public adapterLoad(Lcom/sigmob/sdk/base/models/ADStrategy;)V
    .registers 10

    const/16 v1, 0x7d0

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->v:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithADStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v7

    if-eqz v7, :cond_cd

    :try_start_1d
    invoke-virtual {v7}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isInit()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vlist"

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sub_category"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getLoadReadyCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_channel_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_appid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->d:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/WindAdRequest;->setLoadId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v7, v0, p1}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->loadAd(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :goto_8f
    return-void

    :cond_90
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->addLoadAdQueueWaitAdapterInitComplete(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/base/WindAdRequestController;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not have init success!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_bd} :catch_be

    goto :goto_8f

    :catch_be
    move-exception v0

    new-instance v1, Lcom/sigmob/windad/WindAdAdapterError;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterDidFailToLoadRewardVideoAdWithStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/WindAdAdapterError;)V

    goto :goto_8f

    :cond_cd
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1, p0}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->addLoadAdQueueWaitAdapterInitComplete(Lcom/sigmob/sdk/base/models/ADStrategy;Lcom/sigmob/windad/base/WindAdRequestController;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can\'t find adapter !"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_8f
.end method

.method public autoload()V
    .registers 13

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/sigmob/sdk/base/models/ADStrategy;

    :try_start_13
    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v1, v8}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-object v9, v0

    if-eqz v9, :cond_6

    invoke-virtual {v9, v8}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isReady(Lcom/sigmob/sdk/base/models/ADStrategy;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v11, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    if-eqz v9, :cond_96

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vlist"

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sub_category"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v3}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getLoadReadyCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load_id"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_channel_id"

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_appid"

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_placement_id"

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "6"

    invoke-virtual {v11}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v4

    invoke-virtual {v11}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "load"

    invoke-virtual/range {v1 .. v7}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v9, v11, v8}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->loadAd(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/base/models/ADStrategy;)V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_8e} :catch_90

    goto/16 :goto_6

    :catch_90
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :cond_96
    :try_start_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto load can\'t find adapter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cls: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_c0} :catch_90

    goto/16 :goto_6

    :cond_c2
    return-void
.end method

.method protected b()V
    .registers 2

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected c()V
    .registers 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->p:I

    if-gtz v0, :cond_6e

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_c
    const-string v0, " internalLoadAd  length %d, size %d, mMaxConcurrent %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/sigmob/windad/base/WindAdRequestController;->p:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iput v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->u:I

    :goto_36
    if-ge v2, v1, :cond_7c

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " internalLoadAd index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithADStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->adapterLoad(Lcom/sigmob/sdk/base/models/ADStrategy;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_36

    :cond_6e
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->p:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    goto :goto_c

    :cond_7c
    return-void
.end method

.method public destory()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->n:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->r:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    iput-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

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

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finalize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->w(Ljava/lang/String;)V

    return-void
.end method

.method public getAdStatus()Lcom/sigmob/sdk/base/models/AdStatus;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    return-object v0
.end method

.method public getAdapterWithADStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, Lcom/sigmob/windad/base/WindAdRequestController;->initializeChannelAdapter(Lcom/sigmob/sdk/base/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v0

    :cond_17
    return-object v0
.end method

.method public getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindVideoAdAdapter;

    return-object v0
.end method

.method public getReadyAdapter()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/windad/base/WindVideoAdAdapter;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v3, v0}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_27
    return-object v1
.end method

.method public getReadyAdapter(Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;)V
    .registers 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v2, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v2, :cond_11d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adStatus not ready  is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v1

    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_184

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, v7}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_177

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_177

    invoke-virtual {p0, v3}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v2

    if-eqz v2, :cond_147

    invoke-virtual {v2, v7}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isReady(Lcom/sigmob/sdk/base/models/ADStrategy;)Z

    move-result v3

    if-eqz v3, :cond_147

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getReadyAdapter isReady true "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "load Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    const-string v3, "sub_category"

    const-string v4, "1"

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v2

    :goto_8a
    const-string v2, "platform"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load_id"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vlist"

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_channel_id"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_appid"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_placement_id"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    const-string v5, "askad"

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v8, :cond_181

    if-eqz p1, :cond_181

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vlist"

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "load_id"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_channel_id"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_appid"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "aggr_placement_id"

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    const-string v5, "sdkopen"

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p1, v8, v7}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onSuccess(Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    :cond_11c
    :goto_11c
    return-void

    :cond_11d
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_132

    const-string v0, "strategies is empty"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_11c

    const-string v0, "STRATEGY_EMPTY"

    invoke-interface {p1, v0}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onFailed(Ljava/lang/String;)V

    goto :goto_11c

    :cond_132
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "readyList is empty"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_11c

    const-string v0, "READY_EMPTY"

    invoke-interface {p1, v0}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onFailed(Ljava/lang/String;)V

    goto :goto_11c

    :cond_147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReadyAdapter isReady false "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "load Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    const-string v2, "sub_category"

    const-string v3, "0"

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v1

    goto/16 :goto_8a

    :cond_177
    const-string v3, "sub_category"

    const-string v4, "0"

    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v2

    goto/16 :goto_8a

    :cond_181
    move-object v2, v8

    goto/16 :goto_26

    :cond_184
    if-eqz p1, :cond_11c

    const-string v0, "READY_EMPTY"

    invoke-interface {p1, v0}, Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;->onFailed(Ljava/lang/String;)V

    goto :goto_11c
.end method

.method public getReadyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    return-object v0
.end method

.method public getStrategies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sigmob/sdk/base/models/ADStrategy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    return-object v0
.end method

.method public initializeChannelAdapter(Lcom/sigmob/sdk/base/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;
    .registers 12

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v0, p1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithClsName(Ljava/lang/String;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v7

    if-eqz v7, :cond_2a

    invoke-virtual {v7}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->reset()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find already initialize Adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :goto_29
    return-object v7

    :cond_2a
    :try_start_2a
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sigmob/windad/base/WindVideoAdAdapter;

    if-ne v0, v1, :cond_119

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "platform"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_id"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_channel_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getChannel_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_appid"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "aggr_placement_id"

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getPlacement_id()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->a:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/sigmob/windad/base/WindVideoAdBridge;->Bridge()Lcom/sigmob/windad/base/WindVideoAdBridge;

    move-result-object v1

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->r:Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;

    invoke-virtual {v1, v0}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeInitListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeInitListener;)V

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/windad/base/WindVideoAdBridge;->a(Ljava/util/Map;)V

    invoke-virtual {v1, p0}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeLoadListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeLoadListener;)V

    invoke-virtual {v1, p0}, Lcom/sigmob/windad/base/WindVideoAdBridge;->setAdBridgeShowListener(Lcom/sigmob/windad/base/WindVideoAdBridge$WindVideoAdBridgeShowListener;)V

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindVideoAdAdapter;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_9e} :catch_10d

    :try_start_9e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeChannelAdapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->initWithWADRewardVideoAdConnector(Lcom/sigmob/windad/base/WindVideoAdConnector;)V

    invoke-static {}, Lcom/sigmob/windad/WindAds;->sharedAds()Lcom/sigmob/windad/WindAds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAds;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->initializeSdk(Landroid/content/Context;Lcom/sigmob/sdk/base/models/ADStrategy;)V

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v1

    if-eqz v1, :cond_db

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

    :cond_db
    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeSdk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ADStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_10a} :catch_115

    :goto_10a
    move-object v7, v0

    goto/16 :goto_29

    :catch_10d
    move-exception v0

    :goto_10e
    const-string v1, "can\'t init adapter"

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    :catch_115
    move-exception v1

    move-object v7, v0

    move-object v0, v1

    goto :goto_10e

    :cond_119
    move-object v0, v7

    goto :goto_10a
.end method

.method public isReady()Z
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v2, v0}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getAdapterClsName(Lcom/sigmob/sdk/base/models/ADStrategy;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    if-eqz v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getAdapterWithADStrategy(Lcom/sigmob/sdk/base/models/ADStrategy;)Lcom/sigmob/windad/base/WindVideoAdAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->isReady(Lcom/sigmob/sdk/base/models/ADStrategy;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReady true "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ADStrategy;->getAdapterClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "load Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_5d
    return v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method public judgeWhetherExcuteLoadRequest()Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;
    .registers 5

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getLoadPeriodTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1b

    const-string v0, "load interval Time error"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusNone:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    sget-object v1, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusReady:Lcom/sigmob/sdk/base/models/AdStatus;

    if-eq v0, v1, :cond_2e

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterBreak:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    goto :goto_1a

    :cond_2e
    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->getLoadExpired()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    const-string v0, "Ad is Ready,you can play it directly. "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterReadyLoadInterval:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    goto :goto_1a

    :cond_49
    sget-object v0, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->WindFilterKeepGoing:Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    goto :goto_1a
.end method

.method public loadAd()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->judgeWhetherExcuteLoadRequest()Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;

    move-result-object v0

    sget-object v1, Lcom/sigmob/windad/base/WindAdRequestController$14;->a:[I

    invoke-virtual {v0}, Lcom/sigmob/windad/base/WindAdRequestController$WindFilter;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_72

    :goto_10
    return-void

    :pswitch_11
    const-string v0, "WindFilterKeepGoing"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    invoke-virtual {p0, v2, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->loadAd(ZI)V

    iput v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    goto :goto_10

    :pswitch_1e
    const-string v0, "WindFilterReadyLoadInterval"

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    invoke-virtual {p0, v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController;->loadAd(ZI)V

    iput v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    goto :goto_10

    :pswitch_2c
    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindFilterBreak "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_4f
    iget v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindFilterLoadInterval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_10

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1e
        :pswitch_2c
        :pswitch_4f
    .end packed-switch
.end method

.method public loadAd(ZI)V
    .registers 10

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->f:J

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/AdStatus;->AdStatusLoading:Lcom/sigmob/sdk/base/models/AdStatus;

    iput-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->adStatus:Lcom/sigmob/sdk/base/models/AdStatus;

    invoke-static {}, Lcom/sigmob/sdk/base/common/SDKConfig;->sharedInstance()Lcom/sigmob/sdk/base/common/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/common/SDKConfig;->loadAdTimeout()J

    move-result-wide v0

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x3e8

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->o:Landroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->m:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->q:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;->onVideoAdLoadStart(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/base/common/b/a;->a()Lcom/sigmob/sdk/base/common/b/a;

    move-result-object v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sub_category"

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->l:Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;

    invoke-interface {v2}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestProxy;->getLoadReadyCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "load_count"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "6"

    iget-object v3, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdRequest;->getAdType()I

    move-result v3

    iget-object v4, p0, Lcom/sigmob/windad/base/WindAdRequestController;->j:Lcom/sigmob/windad/WindAdRequest;

    invoke-virtual {v4}, Lcom/sigmob/windad/WindAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sigmob/sdk/base/common/b/b;->b:Lcom/sigmob/sdk/base/common/b/b;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/common/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/b/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-nez p1, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load ad not use lastStrargy loadId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->h:J

    invoke-direct {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->e()V

    :goto_93
    return-void

    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load ad use lastStrargy loadId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sigmob/windad/base/WindAdRequestController;->c()V

    goto :goto_93
.end method

.method public showAd(Landroid/app/Activity;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController;->k:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/windad/base/WindVideoAdAdapter;

    invoke-static {}, Lcom/sigmob/windad/WindAdLifecycleManager;->getInstance()Lcom/sigmob/windad/WindAdLifecycleManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sigmob/windad/WindAdLifecycleManager;->addLifecycleListener(Lcom/sigmob/windad/LifecycleListener;)V

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

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Landroid/view/WindowInsets;)V

    :cond_43
    new-instance v0, Lcom/sigmob/windad/base/WindAdRequestController$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/sigmob/windad/base/WindAdRequestController$1;-><init>(Lcom/sigmob/windad/base/WindAdRequestController;Ljava/util/HashMap;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/sigmob/windad/base/WindAdRequestController;->getReadyAdapter(Lcom/sigmob/windad/base/WindAdRequestController$onFindReadyAdapterLister;)V

    return-void
.end method
