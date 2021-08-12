.class public final Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
.super Lcom/sigmob/wire/Message$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/Message$Builder<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public aaid:Ljava/lang/String;

.field public android_id:Ljava/lang/String;

.field public android_uuid:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public gaid:Ljava/lang/String;

.field public idfa:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imei1:Ljava/lang/String;

.field public imei2:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public msa_udid:Ljava/lang/String;

.field public oaid:Ljava/lang/String;

.field public udid:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public user_id:Ljava/lang/String;

.field public vaid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sigmob/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public aaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->aaid:Ljava/lang/String;

    return-object p0
.end method

.method public android_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_id:Ljava/lang/String;

    return-object p0
.end method

.method public android_uuid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_uuid:Ljava/lang/String;

    return-object p0
.end method

.method public brand(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->brand:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;
    .registers 22

    move-object/from16 v0, p0

    new-instance v19, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->idfa:Ljava/lang/String;

    iget-object v3, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->udid:Ljava/lang/String;

    iget-object v4, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->user_id:Ljava/lang/String;

    iget-object v5, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei:Ljava/lang/String;

    iget-object v6, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_id:Ljava/lang/String;

    iget-object v7, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->android_uuid:Ljava/lang/String;

    iget-object v8, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imsi:Ljava/lang/String;

    iget-object v9, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->gaid:Ljava/lang/String;

    iget-object v10, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->uid:Ljava/lang/String;

    iget-object v11, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->brand:Ljava/lang/String;

    iget-object v12, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei1:Ljava/lang/String;

    iget-object v13, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei2:Ljava/lang/String;

    iget-object v14, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->oaid:Ljava/lang/String;

    iget-object v15, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->vaid:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->aaid:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->msa_udid:Ljava/lang/String;

    move-object/from16 v17, v1

    invoke-super/range {p0 .. p0}, Lcom/sigmob/wire/Message$Builder;->buildUnknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v18

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/wire/okio/ByteString;)V

    return-object v19
.end method

.method public bridge synthetic build()Lcom/sigmob/wire/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId;

    move-result-object v0

    return-object v0
.end method

.method public gaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->gaid:Ljava/lang/String;

    return-object p0
.end method

.method public idfa(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->idfa:Ljava/lang/String;

    return-object p0
.end method

.method public imei(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public imei1(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei1:Ljava/lang/String;

    return-object p0
.end method

.method public imei2(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imei2:Ljava/lang/String;

    return-object p0
.end method

.method public imsi(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->imsi:Ljava/lang/String;

    return-object p0
.end method

.method public msa_udid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->msa_udid:Ljava/lang/String;

    return-object p0
.end method

.method public oaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->oaid:Ljava/lang/String;

    return-object p0
.end method

.method public udid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->udid:Ljava/lang/String;

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public user_id(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->user_id:Ljava/lang/String;

    return-object p0
.end method

.method public vaid(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/common/models/sigdsp/pb/DeviceId$Builder;->vaid:Ljava/lang/String;

    return-object p0
.end method
