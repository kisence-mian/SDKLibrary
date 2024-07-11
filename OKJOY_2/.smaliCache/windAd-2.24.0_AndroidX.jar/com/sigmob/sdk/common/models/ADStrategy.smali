.class public Lcom/sigmob/sdk/common/models/ADStrategy;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:I

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->f:Ljava/lang/String;

    iput p7, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->g:I

    iput-object p8, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->i:Ljava/lang/String;

    iput p10, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->k:I

    return-void
.end method


# virtual methods
.method public addOptions(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getAdType()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->g:I

    return v0
.end method

.method public getAdapterClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getExpired_time()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->k:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getPlacement_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getReadyTime()J
    .registers 3

    iget-wide v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->l:J

    return-wide v0
.end method

.method public getSig_load_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSig_placement_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .registers 7

    iget v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->k:I

    const/4 v1, 0x0

    if-lez v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->l:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->k:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public isExtraCloseCallBack()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->m:Z

    return v0
.end method

.method public resetReady()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->l:J

    return-void
.end method

.method public setExtraCloseCallBack(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->m:Z

    return-void
.end method

.method public setReady()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->l:J

    return-void
.end method

.method public setSig_load_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ADStrategy;->j:Ljava/lang/String;

    return-void
.end method
