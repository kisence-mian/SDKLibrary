.class public Lcom/sigmob/sdk/base/models/ADStrategy;
.super Ljava/lang/Object;


# instance fields
.field private final adType:I

.field private final adapterClass:Ljava/lang/String;

.field private final appId:Ljava/lang/String;

.field private final appKey:Ljava/lang/String;

.field private final channel_id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final placement_id:Ljava/lang/String;

.field private sig_load_id:Ljava/lang/String;

.field private final sig_placement_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->adapterClass:Ljava/lang/String;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->options:Ljava/util/Map;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->channel_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->appId:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->appKey:Ljava/lang/String;

    iput p7, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->adType:I

    iput-object p8, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->placement_id:Ljava/lang/String;

    iput-object p9, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->sig_placement_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addOptions(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public getAdType()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->adType:I

    return v0
.end method

.method public getAdapterClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->adapterClass:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->channel_id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->options:Ljava/util/Map;

    return-object v0
.end method

.method public getPlacement_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->placement_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSig_load_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->sig_load_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSig_placement_id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->sig_placement_id:Ljava/lang/String;

    return-object v0
.end method

.method public setSig_load_id(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ADStrategy;->sig_load_id:Ljava/lang/String;

    return-void
.end method
