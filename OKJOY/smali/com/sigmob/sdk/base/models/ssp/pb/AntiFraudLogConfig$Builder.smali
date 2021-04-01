.class public final Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->events:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;-><init>(Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig;

    move-result-object v0

    return-object v0
.end method

.method public events(Ljava/util/List;)Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->events:Ljava/util/List;

    return-object p0
.end method

.method public motion_config(Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/AntiFraudLogConfig$Builder;->motion_config:Lcom/sigmob/sdk/base/models/ssp/pb/MotionConfig;

    return-object p0
.end method
