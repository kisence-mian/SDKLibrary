.class Lcom/sigmob/sdk/base/c/y;
.super Lcom/sigmob/sdk/base/c/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/sdk/base/c/s",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "ad-responses"

.field private static final c:Ljava/lang/String; = "adm"

.field private static final d:Ljava/lang/String; = "body"

.field private static final e:Ljava/lang/String; = "headers"


# instance fields
.field private final f:Lcom/sigmob/sdk/base/c/n;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private i:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

.field private j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

.field private k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

.field private l:Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

.field private final m:Ljava/lang/String;

.field private n:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo$Builder;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/c/n;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sigmob/sdk/base/c/s;-><init>(Ljava/lang/String;ILcom/sigmob/volley/y;)V

    invoke-static {p5}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    iput p2, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    iput-object p4, p0, Lcom/sigmob/sdk/base/c/y;->m:Ljava/lang/String;

    new-instance v0, Lcom/sigmob/volley/g;

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/sigmob/volley/g;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/sigmob/sdk/base/c/y;->a(Lcom/sigmob/volley/ab;)Lcom/sigmob/volley/q;

    invoke-virtual {p0, v3}, Lcom/sigmob/sdk/base/c/y;->a(Z)Lcom/sigmob/volley/q;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/c/y;->g()V

    return-void
.end method

.method private g()V
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->c()Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/y;->l:Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->b()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/y;->k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->a()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    :cond_1d
    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->did(Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->e()Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/y;->i:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->d()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/c/y;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/y;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_type:Ljava/util/List;

    iget v1, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/y;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->adslot_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    :cond_4e
    return-void
.end method


# virtual methods
.method protected a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/x;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/volley/n;",
            ")",
            "Lcom/sigmob/volley/x",
            "<",
            "Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/volley/n;->b:[B

    invoke-virtual {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v1

    iget-object v2, v0, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/k;->a(Lcom/sigmob/volley/n;)Lcom/sigmob/volley/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sigmob/volley/x;->a(Ljava/lang/Object;Lcom/sigmob/volley/c;)Lcom/sigmob/volley/x;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lcom/sigmob/volley/p;

    invoke-direct {v1, v0}, Lcom/sigmob/volley/p;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/sigmob/volley/x;->a(Lcom/sigmob/volley/ae;)Lcom/sigmob/volley/x;

    move-result-object v0

    goto :goto_1b
.end method

.method protected a(Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;)V
    .registers 16

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "strategy response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    :try_start_17
    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    if-eqz v2, :cond_c9

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c9

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v1

    :goto_35
    if-ge v11, v12, :cond_ac

    iget-object v1, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->strategy:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;

    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, v3, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_53

    iget-object v1, v3, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->options:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_53
    const-string v6, ""

    const-string v1, "appId"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_66

    const-string v1, "appId"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    :cond_66
    const-string v5, ""

    iget-object v1, v3, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v5, v3, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->channel_id:Ljava/lang/String;

    :cond_72
    const-string v7, ""

    const-string v1, "apiKey"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_85

    const-string v1, "apiKey"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    :cond_85
    const-string v9, ""

    const-string v1, "placementId"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_98

    const-string v1, "placementId"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    :cond_98
    new-instance v1, Lcom/sigmob/sdk/base/models/ADStrategy;

    iget-object v2, v3, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->adapter:Ljava/lang/String;

    iget-object v3, v3, Lcom/sigmob/sdk/base/models/ssp/pb/Strategy;->name:Ljava/lang/String;

    iget v8, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    iget-object v10, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/sigmob/sdk/base/models/ADStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_35

    :cond_ac
    new-instance v1, Lcom/sigmob/sdk/base/c/x;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/c/x;-><init>()V

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->max_concurrent_operation_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sigmob/sdk/base/c/x;->a:I

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->single_channel_timeout:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/sigmob/sdk/base/c/x;->b:I

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    iget-object v3, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    invoke-interface {v2, v13, v1, v3}, Lcom/sigmob/sdk/base/c/n;->onSuccess(Ljava/util/List;Lcom/sigmob/sdk/base/c/x;Ljava/lang/String;)V

    :goto_c8
    return-void

    :cond_c9
    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_f9

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    iget v3, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    new-instance v4, Ljava/lang/Error;

    const-string v5, "600103"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_e1} :catch_e2

    goto :goto_c8

    :catch_e2
    move-exception v1

    const-string v2, "strategy exception "

    invoke-static {v2, v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    iget v3, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    new-instance v4, Ljava/lang/Error;

    const-string v5, "600103"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V

    goto :goto_c8

    :cond_f9
    :try_start_f9
    invoke-static {}, Lcom/sigmob/sdk/base/models/SigmobError;->values()[Lcom/sigmob/sdk/base/models/SigmobError;

    move-result-object v2

    array-length v3, v2

    :goto_fe
    if-ge v1, v3, :cond_12c

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/SigmobError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_129

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    iget v3, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    new-instance v5, Ljava/lang/Error;

    invoke-virtual {v4}, Lcom/sigmob/sdk/base/models/SigmobError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v5}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V

    goto :goto_c8

    :cond_129
    add-int/lit8 v1, v1, 0x1

    goto :goto_fe

    :cond_12c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ERROR_SIGMOB_STRATEGY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    iget v3, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    new-instance v4, Ljava/lang/Error;

    iget-object v5, p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;->code:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_15e} :catch_e2

    goto/16 :goto_c8
.end method

.method public a(Lcom/sigmob/volley/ae;)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    iget-object v1, p0, Lcom/sigmob/sdk/base/c/y;->h:Ljava/lang/String;

    iget v2, p0, Lcom/sigmob/sdk/base/c/y;->g:I

    new-instance v3, Ljava/lang/Error;

    const-string v4, "600100"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/c/n;->onErrorResponse(Ljava/lang/String;ILjava/lang/Error;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/c/y;->a(Lcom/sigmob/sdk/base/models/ssp/pb/StrategyResponse;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public c()[B
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/sigmob/sdk/base/common/aa;->f()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->l:Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->app(Lcom/sigmob/sdk/base/models/sigdsp/pb/App;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    iget-object v3, p0, Lcom/sigmob/sdk/base/c/y;->j:Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;

    invoke-virtual {v3}, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->k:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->device(Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, p0, Lcom/sigmob/sdk/base/c/y;->i:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->network(Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    if-nez v2, :cond_36

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    :cond_36
    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    const-string v3, "gdpr_consent_status"

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->l()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_44} :catch_4d

    move-result-object v1

    :goto_45
    if-nez v1, :cond_53

    const-string v1, "builder Ads Post entry fail "

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    :goto_4c
    return-object v0

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    goto :goto_45

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/c/y;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "send Bid request: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->encode()[B

    move-result-object v0

    goto :goto_4c
.end method

.method public f()Lcom/sigmob/sdk/base/c/n;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/c/y;->f:Lcom/sigmob/sdk/base/c/n;

    return-object v0
.end method
