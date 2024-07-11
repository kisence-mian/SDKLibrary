.class public final Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;",
        "Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ads:Ljava/lang/String;

.field public log:Ljava/lang/String;

.field public strategy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->ads:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->strategy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ads(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->ads:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;
    .registers 6

    new-instance v0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->ads:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->strategy:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->build()Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->log:Ljava/lang/String;

    return-object p0
.end method

.method public strategy(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/ssp/pb/CommonEndpointsConfig$Builder;->strategy:Ljava/lang/String;

    return-object p0
.end method
