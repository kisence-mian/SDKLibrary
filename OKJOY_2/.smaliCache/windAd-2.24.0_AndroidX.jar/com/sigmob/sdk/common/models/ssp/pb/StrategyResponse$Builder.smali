.class public final Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;

.field public error_message:Ljava/lang/String;

.field public max_concurrent_operation_count:Ljava/lang/Integer;

.field public single_channel_timeout:Ljava/lang/Integer;

.field public slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;"
        }
    .end annotation
.end field

.field public strategy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;",
            ">;"
        }
    .end annotation
.end field

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->DEFAULT_CODE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->code:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->error_message:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->uid:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->DEFAULT_MAX_CONCURRENT_OPERATION_COUNT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->max_concurrent_operation_count:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;->DEFAULT_SINGLE_CHANNEL_TIMEOUT:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->single_channel_timeout:Ljava/lang/Integer;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->strategy:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->slots:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;
    .registers 11

    new-instance v9, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->code:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->error_message:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->strategy:Ljava/util/List;

    iget-object v4, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->uid:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->slots:Ljava/util/List;

    iget-object v6, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->max_concurrent_operation_count:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->single_channel_timeout:Ljava/lang/Integer;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v9
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse;

    move-result-object v0

    return-object v0
.end method

.method public code(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->code:Ljava/lang/Integer;

    return-object p0
.end method

.method public error_message(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->error_message:Ljava/lang/String;

    return-object p0
.end method

.method public max_concurrent_operation_count(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->max_concurrent_operation_count:Ljava/lang/Integer;

    return-object p0
.end method

.method public single_channel_timeout(Ljava/lang/Integer;)Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->single_channel_timeout:Ljava/lang/Integer;

    return-object p0
.end method

.method public slots(Ljava/util/List;)Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/AdSlot;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->slots:Ljava/util/List;

    return-object p0
.end method

.method public strategy(Ljava/util/List;)Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/common/models/ssp/pb/Strategy;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->strategy:Ljava/util/List;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/StrategyResponse$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method
