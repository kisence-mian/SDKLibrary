.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public connection_type:Ljava/lang/Integer;

.field public ipv4:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public operator:Ljava/lang/String;

.field public operator_type:Ljava/lang/Integer;

.field public ua:Ljava/lang/String;

.field public wifi_id:Ljava/lang/String;

.field public wifi_mac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->ipv4:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;->DEFAULT_CONNECTION_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->connection_type:Ljava/lang/Integer;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;->DEFAULT_OPERATOR_TYPE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->operator_type:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->ua:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->operator:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->mac:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_mac:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;
    .registers 11

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->ipv4:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->connection_type:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->operator_type:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->ua:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->operator:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->mac:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_mac:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_id:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    move-result-object v0

    return-object v0
.end method

.method public connection_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->connection_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public ipv4(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->ipv4:Ljava/lang/String;

    return-object p0
.end method

.method public mac(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public operator(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->operator:Ljava/lang/String;

    return-object p0
.end method

.method public operator_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->operator_type:Ljava/lang/Integer;

    return-object p0
.end method

.method public ua(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->ua:Ljava/lang/String;

    return-object p0
.end method

.method public wifi_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_id:Ljava/lang/String;

    return-object p0
.end method

.method public wifi_mac(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network$Builder;->wifi_mac:Ljava/lang/String;

    return-object p0
.end method
