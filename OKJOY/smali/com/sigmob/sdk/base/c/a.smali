.class Lcom/sigmob/sdk/base/c/a;
.super Lcom/sigmob/sdk/base/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/base/c/s",
        "<",
        "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "ad-responses"

.field private static final c:Ljava/lang/String; = "adm"

.field private static final d:Ljava/lang/String; = "body"

.field private static final e:Ljava/lang/String; = "headers"


# instance fields
.field private final f:Lcom/sigmob/sdk/base/c/l;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

.field private j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

.field private k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

.field private l:Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

.field private final m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/sigmob/sdk/base/models/LoadAdRequest;Lcom/sigmob/sdk/base/c/l;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/sdk/base/models/sigdsp/pb/AdCache;",
            ">;",
            "Lcom/sigmob/sdk/base/models/LoadAdRequest;",
            "Lcom/sigmob/sdk/base/c/l;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/base/c/s;-><init>(Ljava/lang/String;ILcom/sigmob/volley/y;)V

    invoke-static {p5}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/a;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    invoke-virtual {p4}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getAdType()I

    move-result v0

    iput v0, p0, Lcom/sigmob/sdk/base/c/a;->g:I

    iput-object p3, p0, Lcom/sigmob/sdk/base/c/a;->o:Ljava/util/Map;

    iput-object p2, p0, Lcom/sigmob/sdk/base/c/a;->n:Ljava/util/Map;

    iput-object p4, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    new-instance v0, Lcom/sigmob/volley/g;

    const/16 v1, 0x2710

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/volley/g;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/a;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/a;->a(Z)Lcom/sigmob/volley/q;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/c/a;->f()V

    return-void
.end method

.method private f()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->c()Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/a;->l:Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    :try_start_7
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->l:Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_11d

    :goto_14
    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->b()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/a;->k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->a()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_37
    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->did(Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->e()Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/a;->i:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->d()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/sdk/base/c/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/sigmob/sdk/base/c/a;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_123

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/splash/a;->b:Lcom/sigmob/sdk/splash/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/splash/a;->c:Lcom/sigmob/sdk/splash/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->material_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/splash/a;->d:Lcom/sigmob/sdk/splash/a;

    invoke-virtual {v1}, Lcom/sigmob/sdk/splash/a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->b:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->g:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b3
    :goto_b3
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_strategy_index(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cb

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    :cond_cb
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->n:Ljava/util/Map;

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->n:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->sdk_cached_ads(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    :cond_de
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_11c

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "reward_last_crid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v2, "reward_last_campid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_111

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v2, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_crid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    :cond_111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11c

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->latest_camp_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    :cond_11c
    return-void

    :catch_11d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_14

    :cond_123
    iget v0, p0, Lcom/sigmob/sdk/base/c/a;->g:I

    if-eq v0, v2, :cond_12c

    iget v0, p0, Lcom/sigmob/sdk/base/c/a;->g:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b3

    :cond_12c
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->a:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->c:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->e:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->f:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->creative_type:Ljava/util/List;

    sget-object v1, Lcom/sigmob/sdk/base/common/q;->h:Lcom/sigmob/sdk/base/common/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/common/q;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->o:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->ad_caches(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    goto/16 :goto_b3
.end method


# virtual methods
.method public a()Lcom/sigmob/sdk/base/c/l;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    return-object v0
.end method

.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
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

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/volley/n;->b:[B

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;

    if-eqz v0, :cond_9c

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

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_55} :catch_a6

    move-result v1

    if-lez v1, :cond_8a

    :try_start_58
    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->ads:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getLoadId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->adUnit(Lcom/sigmob/sdk/base/models/sigdsp/pb/Ad;Ljava/lang/String;Ljava/lang/String;)Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_7d} :catch_7f

    move-result-object v0

    :goto_7e
    return-object v0

    :catch_7f
    move-exception v0

    :try_start_80
    new-instance v1, Lcom/sigmob/volley/p;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/p;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_7e

    :cond_8a
    new-instance v1, Lcom/sigmob/volley/f;

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->error_code:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidResponse;->request_id:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/sigmob/volley/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_7e

    :cond_9c
    new-instance v0, Lcom/sigmob/volley/p;

    invoke-direct {v0, p1}, Lcom/sigmob/volley/p;-><init>(Lcom/sigmob/volley/n;)V

    invoke-static {v0}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_a4} :catch_a6

    move-result-object v0

    goto :goto_7e

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Lcom/sigmob/volley/p;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/p;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_7e
.end method

.method protected a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, p1, v1}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Lcom/sigmob/sdk/base/c/a;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    const-string v2, "adUnit is null"

    iget-object v3, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_a

    :cond_1c
    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    const-string v2, "adUnit is null"

    iget-object v3, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_a
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 9

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/sigmob/volley/f;

    if-eqz v0, :cond_65

    move-object v0, p1

    check-cast v0, Lcom/sigmob/volley/f;

    invoke-virtual {v0}, Lcom/sigmob/volley/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sigmob/sdk/base/models/SigmobError;->values()[Lcom/sigmob/sdk/base/models/SigmobError;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_37

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, v4, v2, v1, v3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    :goto_33
    return-void

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ERROR_SIGMOB_REQUEST "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    sget-object v2, Lcom/sigmob/sdk/base/models/SigmobError;->RTB_SIG_DSP_NO_ADS_ERROR:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_33

    :cond_65
    instance-of v0, p1, Lcom/sigmob/volley/p;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_INFORMATION_LOSE:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_33

    :cond_77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ERROR_SIGMOB_NETWORK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->f:Lcom/sigmob/sdk/base/c/l;

    sget-object v1, Lcom/sigmob/sdk/base/models/SigmobError;->ERROR_SIGMOB_NETWORK:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-virtual {p1}, Lcom/sigmob/volley/ae;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/sigmob/sdk/base/c/l;->a(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/LoadAdRequest;)V

    goto :goto_33
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/c/a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public c()[B
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->f()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    move-result-object v3

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->l:Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->app(Lcom/sigmob/sdk/base/models/sigdsp/pb/App;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    iget-object v0, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->device(Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->i:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->network(Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_a5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4a

    iget-object v5, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v5}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_73} :catch_74

    goto :goto_4a

    :catch_74
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v2

    :goto_79
    if-nez v0, :cond_aa

    const-string v0, "builder Ads Post entry fail "

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    move-object v0, v2

    :goto_81
    return-object v0

    :cond_82
    :try_start_82
    invoke-virtual {v3, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options(Ljava/util/Map;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "request_scene_type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/a;->m:Lcom/sigmob/sdk/base/models/LoadAdRequest;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/LoadAdRequest;->getOptions()Ljava/util/Map;

    move-result-object v1

    const-string v4, "isExpired"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->ad_is_expired:Ljava/lang/Boolean;

    iput-object v0, v3, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->request_scene_type:Ljava/lang/Integer;

    :cond_a5
    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_a8} :catch_74

    move-result-object v0

    goto :goto_79

    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/a;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "send Bid request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->encode()[B

    move-result-object v0

    goto :goto_81
.end method
