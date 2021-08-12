.class Lcom/sigmob/sdk/base/a/a;
.super Lcom/sigmob/sdk/common/e/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/common/e/k<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/sigmob/sdk/base/a/b$a;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

.field private f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

.field private g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

.field private h:Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

.field private final i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/a/b$a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdCache;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            "Lcom/sigmob/sdk/base/a/b$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/common/e/k;-><init>(Ljava/lang/String;ILcom/sigmob/volley/o$a;)V

    invoke-static {p5}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/a/a;->b:Lcom/sigmob/sdk/base/a/b$a;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result p1

    iput p1, p0, Lcom/sigmob/sdk/base/a/a;->c:I

    iput-object p3, p0, Lcom/sigmob/sdk/base/a/a;->k:Ljava/util/Map;

    iput-object p2, p0, Lcom/sigmob/sdk/base/a/a;->j:Ljava/util/Map;

    iput-object p4, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    new-instance p1, Lcom/sigmob/volley/d;

    const/16 p2, 0x2710

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/sigmob/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/a/a;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/a/a;->a(Z)Lcom/sigmob/volley/m;

    return-void
.end method

.method private e()V
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createApp()Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/a;->h:Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    :try_start_6
    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->app_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    goto :goto_1a

    :catchall_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    :goto_1a
    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createDevice()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/a;->g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createDeviceId()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_3b
    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did(Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createNetwork()Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/a;->e:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createAdSlot()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/sdk/base/a/a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/sigmob/sdk/base/a/a;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_b7

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/splash/a;->b:Lcom/sigmob/sdk/splash/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/splash/a;->c:Lcom/sigmob/sdk/splash/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/splash/a;->d:Lcom/sigmob/sdk/splash/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->b:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->g:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_118

    :cond_b7
    if-eq v0, v2, :cond_bc

    const/4 v1, 0x4

    if-ne v0, v1, :cond_118

    :cond_bc
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->a:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->c:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->e:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->f:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/j;->h:Lcom/sigmob/sdk/base/common/j;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/j;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->k:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->ad_caches(Ljava/util/Map;)Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    :cond_118
    :goto_118
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->sdk_strategy_index(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_130

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    :cond_130
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->j:Ljava/util/Map;

    if-eqz v0, :cond_141

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_141

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->j:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->sdk_cached_ads(Ljava/util/Map;)Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    :cond_141
    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v0, :cond_17d

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reward_last_crid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "reward_last_campid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_172

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->latest_crid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    :cond_172
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17d

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->latest_camp_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    :cond_17d
    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/o;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/j;",
            ")",
            "Lcom/sigmob/volley/o<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ads Response start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/volley/j;->b:[B

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;

    if-eqz v0, :cond_2f

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1

    :cond_2f
    new-instance v0, Lcom/sigmob/volley/l;

    invoke-direct {v0, p1}, Lcom/sigmob/volley/l;-><init>(Lcom/sigmob/volley/j;)V

    invoke-static {v0}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    return-object p1

    :catchall_39
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/sigmob/volley/l;

    invoke-direct {v0, p1}, Lcom/sigmob/volley/l;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/sigmob/volley/o;->a(Lcom/sigmob/volley/t;)Lcom/sigmob/volley/o;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method protected a(Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ads Response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    :try_start_35
    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adUnit(Lcom/sigmob/sdk/common/models/sigdsp/pb/Ad;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p1

    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->b:Lcom/sigmob/sdk/base/a/b$a;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v1, p1, v2}, Lcom/sigmob/sdk/base/a/b$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_52

    return-void

    :catchall_52
    move-exception p1

    goto :goto_64

    :cond_54
    iget-object v1, p0, Lcom/sigmob/sdk/base/a/a;->b:Lcom/sigmob/sdk/base/a/b$a;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    iget-object p1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/sigmob/sdk/base/a/b$a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void

    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/sigmob/sdk/base/a/a;->b:Lcom/sigmob/sdk/base/a/b$a;

    sget-object v1, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    const-string v3, "bidResponse is null"

    invoke-interface {p1, v1, v3, v0, v2}, Lcom/sigmob/sdk/base/a/b$a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 6

    instance-of v0, p1, Lcom/sigmob/volley/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->b:Lcom/sigmob/sdk/base/a/b$a;

    sget-object v2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/common/models/SigmobError;

    goto :goto_2e

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ERROR_SIGMOB_NETWORK "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/a;->b:Lcom/sigmob/sdk/base/a/b$a;

    sget-object v2, Lcom/sigmob/sdk/common/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/common/models/SigmobError;

    :goto_2e
    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/SigmobError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, v2, p1, v1, v3}, Lcom/sigmob/sdk/base/a/b$a;->a(ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/a/a;->a(Lcom/sigmob/sdk/common/models/sigdsp/pb/BidResponse;)V

    return-void
.end method

.method public b()[B
    .registers 7

    invoke-direct {p0}, Lcom/sigmob/sdk/base/a/a;->e()V

    const/4 v0, 0x0

    :try_start_4
    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createBidRequest()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->h:Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->app(Lcom/sigmob/sdk/common/models/sigdsp/pb/App;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/a;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->device(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->e:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->network(Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v2, :cond_98

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_98

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_75
    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options(Ljava/util/Map;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v2

    const-string v3, "request_scene_type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/a;->i:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v3

    const-string v4, "isExpired"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->ad_is_expired:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->request_scene_type:Ljava/lang/Integer;

    :cond_98
    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;

    move-result-object v1
    :try_end_9c
    .catchall {:try_start_4 .. :try_end_9c} :catchall_9d

    goto :goto_a6

    :catchall_9d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    move-object v1, v0

    :goto_a6
    if-nez v1, :cond_ae

    const-string v1, "builder Ads Post entry fail "

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-object v0

    :cond_ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/a/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " send Bid request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;->encode()[B

    move-result-object v0

    return-object v0
.end method
