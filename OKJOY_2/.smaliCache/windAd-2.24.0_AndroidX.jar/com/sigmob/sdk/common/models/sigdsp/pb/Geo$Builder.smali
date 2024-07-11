.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public city_code:Ljava/lang/Long;

.field public country:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public lat:Ljava/lang/Float;

.field public lon:Ljava/lang/Float;

.field public region_code:Ljava/lang/String;

.field public timeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;->DEFAULT_LAT:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lat:Ljava/lang/Float;

    sget-object v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;->DEFAULT_LON:Ljava/lang/Float;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lon:Ljava/lang/Float;

    const-string v0, ""

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->timeZone:Ljava/lang/String;

    sget-object v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;->DEFAULT_CITY_CODE:Ljava/lang/Long;

    iput-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->city_code:Ljava/lang/Long;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->region_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;
    .registers 11

    new-instance v9, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    iget-object v1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lat:Ljava/lang/Float;

    iget-object v2, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lon:Ljava/lang/Float;

    iget-object v3, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->language:Ljava/lang/String;

    iget-object v4, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->timeZone:Ljava/lang/String;

    iget-object v5, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->city_code:Ljava/lang/Long;

    iget-object v6, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->country:Ljava/lang/String;

    iget-object v7, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->region_code:Ljava/lang/String;

    invoke-super {p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v9
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo;

    move-result-object v0

    return-object v0
.end method

.method public city_code(Ljava/lang/Long;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->city_code:Ljava/lang/Long;

    return-object p0
.end method

.method public country(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->country:Ljava/lang/String;

    return-object p0
.end method

.method public language(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public lat(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lat:Ljava/lang/Float;

    return-object p0
.end method

.method public lon(Ljava/lang/Float;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->lon:Ljava/lang/Float;

    return-object p0
.end method

.method public region_code(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->region_code:Ljava/lang/String;

    return-object p0
.end method

.method public timeZone(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/Geo$Builder;->timeZone:Ljava/lang/String;

    return-object p0
.end method
