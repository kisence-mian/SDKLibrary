.class public final Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public android_id:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public gaid:Ljava/lang/String;

.field public geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

.field public idfa:Ljava/lang/String;

.field public idfv:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public language:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public android_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->android_id:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;
    .registers 11

    new-instance v0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->idfa:Ljava/lang/String;

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->idfv:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->country:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    iget-object v6, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->android_id:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->imei:Ljava/lang/String;

    iget-object v8, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->gaid:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public country(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public gaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->gaid:Ljava/lang/String;

    return-object p0
.end method

.method public geo(Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->geo:Lcom/sigmob/sdk/base/models/sigdsp/pb/Geo;

    return-object p0
.end method

.method public idfa(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->idfa:Ljava/lang/String;

    return-object p0
.end method

.method public idfv(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->idfv:Ljava/lang/String;

    return-object p0
.end method

.method public imei(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public language(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/ssp/pb/SdkConfigRequest$Builder;->language:Ljava/lang/String;

    return-object p0
.end method
