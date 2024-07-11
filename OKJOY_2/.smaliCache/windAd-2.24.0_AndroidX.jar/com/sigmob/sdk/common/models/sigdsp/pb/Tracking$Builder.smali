.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public tracking_event_type:Ljava/lang/String;

.field public tracking_url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->tracking_event_type:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->tracking_url:Ljava/util/List;

    invoke-static {}, Lcom/sigmob/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->tracking_url:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->tracking_event_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->tracking_url:Ljava/util/List;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking;

    move-result-object v0

    return-object v0
.end method

.method public tracking_event_type(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->tracking_event_type:Ljava/lang/String;

    return-object p0
.end method

.method public tracking_url(Ljava/util/List;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sigmob/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Tracking$Builder;->tracking_url:Ljava/util/List;

    return-object p0
.end method
