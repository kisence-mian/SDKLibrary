.class public Lcom/sigmob/sdk/common/e/o;
.super Lcom/sigmob/sdk/common/e/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/sdk/common/e/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/common/e/k<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/sigmob/sdk/common/e/o$a;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

.field private f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

.field private g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

.field private h:Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/e/o$a;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/common/e/k;-><init>(Ljava/lang/String;ILcom/sigmob/volley/o$a;)V

    invoke-static {p5}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/common/e/o;->b:Lcom/sigmob/sdk/common/e/o$a;

    iput p2, p0, Lcom/sigmob/sdk/common/e/o;->c:I

    iput-object p4, p0, Lcom/sigmob/sdk/common/e/o;->i:Ljava/lang/String;

    new-instance p1, Lcom/sigmob/volley/d;

    const/16 p2, 0x2710

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/sigmob/volley/d;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/o;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/m;

    invoke-virtual {p0, p3}, Lcom/sigmob/sdk/common/e/o;->a(Z)Lcom/sigmob/volley/m;

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/e/o$a;)V
    .registers 13

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object v0

    const v1, 0x92824

    if-nez v0, :cond_11

    if-eqz p4, :cond_10

    const-string p0, "RequestQueue is null"

    invoke-interface {p4, p2, p1, v1, p0}, Lcom/sigmob/sdk/common/e/o$a;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    :try_start_11
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/common/e/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    if-eqz p4, :cond_27

    const-string p0, "can\'t connection server"

    invoke-interface {p4, p2, p1, v1, p0}, Lcom/sigmob/sdk/common/e/o$a;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V

    :cond_27
    return-void

    :cond_28
    new-instance v0, Lcom/sigmob/sdk/common/e/o;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sigmob/sdk/common/e/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/common/e/o$a;)V

    invoke-static {}, Lcom/sigmob/sdk/common/e/f;->a()Lcom/sigmob/sdk/common/e/l;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/common/e/l;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_3b

    return-void

    :catchall_3b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    if-eqz p4, :cond_5f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LoadStrategies catch "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p2, p1, v1, p0}, Lcom/sigmob/sdk/common/e/o$a;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V

    :cond_5f
    return-void
.end method

.method private e()V
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createApp()Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/e/o;->h:Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createDevice()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/e/o;->g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createDeviceId()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/common/e/o;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/sigmob/sdk/common/e/o;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;

    :cond_1d
    iget-object v1, p0, Lcom/sigmob/sdk/common/e/o;->g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->did(Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createNetwork()Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/e/o;->e:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createAdSlot()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/e/o;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/sdk/common/e/o;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/o;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    :cond_4c
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
            "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/volley/j;->b:[B

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v1

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/a;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/h;->a(Lcom/sigmob/volley/j;)Lcom/sigmob/volley/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sigmob/volley/o;->a(Ljava/lang/Object;Lcom/sigmob/volley/b$a;)Lcom/sigmob/volley/o;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-object p1

    :catchall_1c
    move-exception p1

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

.method protected a(Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "placementId"

    const-string v3, "apiKey"

    const-string v4, "appId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strategy response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sigmob/logger/SigmobLog;->d(Ljava/lang/String;)V

    :try_start_20
    iget-object v6, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    if-eqz v6, :cond_10c

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_10c

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_3e
    if-ge v8, v6, :cond_ef

    iget-object v9, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iget-object v10, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_5a

    iget-object v10, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5a
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_5e
    .catchall {:try_start_20 .. :try_end_5e} :catchall_153

    const-string v11, "sigmob"

    const-string v12, ""

    if-eqz v10, :cond_6c

    :try_start_64
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_6a
    move-object v15, v10

    goto :goto_7e

    :cond_6c
    iget-object v10, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7d

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sigmob/sdk/common/a;->R()Ljava/lang/String;

    move-result-object v10

    goto :goto_6a

    :cond_7d
    move-object v15, v12

    :goto_7e
    iget-object v10, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8a

    iget-object v10, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    move-object v14, v10

    goto :goto_8b

    :cond_8a
    move-object v14, v12

    :goto_8b
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9a

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v16, v10

    goto :goto_9c

    :cond_9a
    move-object/from16 v16, v12

    :goto_9c
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_ab

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :goto_a8
    move-object/from16 v18, v10

    goto :goto_b8

    :cond_ab
    iget-object v10, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b6

    iget-object v10, v1, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    goto :goto_a8

    :cond_b6
    move-object/from16 v18, v12

    :goto_b8
    new-instance v12, Lcom/sigmob/sdk/common/models/ADStrategy;

    iget-object v11, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    iget-object v10, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    iget v5, v1, Lcom/sigmob/sdk/common/e/o;->c:I

    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-object v3, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->ad_expire_time:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object v3, v10

    move-object v10, v12

    move-object/from16 v23, v4

    move-object v4, v12

    move-object v12, v3

    move/from16 v17, v5

    move-object/from16 v19, v2

    invoke-direct/range {v10 .. v20}, Lcom/sigmob/sdk/common/models/ADStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v9, Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;->enable_extra_close_callback:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sigmob/sdk/common/models/ADStrategy;->setExtraCloseCallBack(Z)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    goto/16 :goto_3e

    :cond_ef
    new-instance v2, Lcom/sigmob/sdk/common/e/n;

    invoke-direct {v2}, Lcom/sigmob/sdk/common/e/n;-><init>()V

    iget-object v3, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/sigmob/sdk/common/e/n;->a:I

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/sigmob/sdk/common/e/n;->b:I

    iget-object v0, v1, Lcom/sigmob/sdk/common/e/o;->b:Lcom/sigmob/sdk/common/e/o$a;

    iget-object v3, v1, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    invoke-interface {v0, v7, v2, v3}, Lcom/sigmob/sdk/common/e/o$a;->onSuccess(Ljava/util/List;Lcom/sigmob/sdk/common/e/n;Ljava/lang/String;)V

    goto :goto_169

    :cond_10c
    iget-object v2, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_123

    iget-object v0, v1, Lcom/sigmob/sdk/common/e/o;->b:Lcom/sigmob/sdk/common/e/o$a;

    iget-object v2, v1, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    iget v3, v1, Lcom/sigmob/sdk/common/e/o;->c:I

    const-string v4, "strategyResponse code 0"

    const v5, 0x92827

    invoke-interface {v0, v2, v3, v5, v4}, Lcom/sigmob/sdk/common/e/o$a;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_169

    :cond_123
    iget-object v2, v1, Lcom/sigmob/sdk/common/e/o;->b:Lcom/sigmob/sdk/common/e/o$a;

    iget-object v3, v1, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    iget v4, v1, Lcom/sigmob/sdk/common/e/o;->c:I

    iget-object v5, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->error_message:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sigmob/sdk/common/e/o$a;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ERROR_SIGMOB_STRATEGY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_64 .. :try_end_152} :catchall_153

    goto :goto_169

    :catchall_153
    move-exception v0

    const-string v2, "strategy exception "

    invoke-static {v2, v0}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, v1, Lcom/sigmob/sdk/common/e/o;->b:Lcom/sigmob/sdk/common/e/o$a;

    iget-object v3, v1, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    iget v4, v1, Lcom/sigmob/sdk/common/e/o;->c:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const v5, 0x92827

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/sigmob/sdk/common/e/o$a;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V

    :goto_169
    return-void
.end method

.method public a(Lcom/sigmob/volley/t;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/sdk/common/e/o;->b:Lcom/sigmob/sdk/common/e/o$a;

    iget-object v1, p0, Lcom/sigmob/sdk/common/e/o;->d:Ljava/lang/String;

    iget v2, p0, Lcom/sigmob/sdk/common/e/o;->c:I

    invoke-virtual {p1}, Lcom/sigmob/volley/t;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v3, 0x92824

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/sigmob/sdk/common/e/o$a;->onErrorResponse(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/e/o;->a(Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;)V

    return-void
.end method

.method public b()[B
    .registers 6

    invoke-direct {p0}, Lcom/sigmob/sdk/common/e/o;->e()V

    const/4 v0, 0x0

    :try_start_4
    invoke-static {}, Lcom/sigmob/sdk/common/models/ModelBuilderCreator;->createBidRequest()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/common/e/o;->h:Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/App$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->app(Lcom/sigmob/sdk/common/models/sigdsp/pb/App;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/sdk/common/e/o;->f:Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sigmob/sdk/common/e/o;->g:Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->device(Lcom/sigmob/sdk/common/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, p0, Lcom/sigmob/sdk/common/e/o;->e:Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Network$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->network(Lcom/sigmob/sdk/common/models/sigdsp/pb/Network;)Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    if-nez v2, :cond_39

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    :cond_39
    iget-object v2, v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "gdpr_consent_status"

    invoke-static {}, Lcom/sigmob/sdk/common/a;->ai()Lcom/sigmob/sdk/common/a;

    invoke-static {}, Lcom/sigmob/sdk/common/a;->V()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/BidRequest;

    move-result-object v1
    :try_end_4b
    .catchall {:try_start_4 .. :try_end_4b} :catchall_4c

    goto :goto_55

    :catchall_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    move-object v1, v0

    :goto_55
    if-nez v1, :cond_5d

    const-string v1, "builder Ads Post entry fail "

    invoke-static {v1}, Lcom/sigmob/logger/SigmobLog;->e(Ljava/lang/String;)V

    return-object v0

    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/e/o;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " send strategy request: "

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
