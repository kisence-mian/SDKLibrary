.class public final Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/App;",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public app_id:Ljava/lang/String;

.field public app_package:Ljava/lang/String;

.field public app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

.field public channel_id:Ljava/lang/String;

.field public idfv:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public orientation:Ljava/lang/Integer;

.field public product_id:Ljava/lang/String;

.field public support_http:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_package:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->DEFAULT_ORIENTATION:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->orientation:Ljava/lang/Integer;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->idfv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->channel_id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->product_id:Ljava/lang/String;

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->DEFAULT_SUPPORT_HTTP:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->support_http:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public app_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public app_package(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_package:Ljava/lang/String;

    return-object p0
.end method

.method public app_version(Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/sigdsp/pb/App;
    .registers 12

    new-instance v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->app_package:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->orientation:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->idfv:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->channel_id:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->product_id:Ljava/lang/String;

    iget-object v9, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->support_http:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;-><init>(Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    move-result-object v0

    return-object v0
.end method

.method public channel_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->channel_id:Ljava/lang/String;

    return-object p0
.end method

.method public idfv(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->idfv:Ljava/lang/String;

    return-object p0
.end method

.method public name(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public orientation(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->orientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public product_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->product_id:Ljava/lang/String;

    return-object p0
.end method

.method public support_http(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App$Builder;->support_http:Ljava/lang/Boolean;

    return-object p0
.end method
