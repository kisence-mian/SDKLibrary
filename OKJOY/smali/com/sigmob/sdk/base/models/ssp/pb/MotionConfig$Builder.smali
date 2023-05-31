.class public final Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public count:Ljava/lang/Integer;

.field public interval:Ljava/lang/Integer;

.field public queue_max:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->DEFAULT_INTERVAL:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->interval:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->DEFAULT_QUEUE_MAX:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->queue_max:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;->DEFAULT_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->count:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->interval:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->queue_max:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->count:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    move-result-object v0

    return-object v0
.end method

.method public count(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public interval(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->interval:Ljava/lang/Integer;

    return-object p0
.end method

.method public queue_max(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig$Builder;->queue_max:Ljava/lang/Integer;

    return-object p0
.end method
