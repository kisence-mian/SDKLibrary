.class final Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;
    .registers 8

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_eb

    packed-switch v0, :pswitch_data_f4

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->idfa(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->udid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->user_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imei(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->android_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_5f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->android_uuid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_6b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imsi(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_77
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->gaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto :goto_9

    :pswitch_83
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->uid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :pswitch_90
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->brand(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :pswitch_9d
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imei1(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :pswitch_aa
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->imei2(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :pswitch_b7
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->oaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :pswitch_c4
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->vaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :pswitch_d1
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->aaid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :pswitch_de
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->msaudid(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    goto/16 :goto_9

    :cond_eb
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
        :pswitch_47
        :pswitch_53
        :pswitch_5f
        :pswitch_6b
        :pswitch_77
        :pswitch_83
        :pswitch_90
        :pswitch_9d
        :pswitch_aa
        :pswitch_b7
        :pswitch_c4
        :pswitch_d1
        :pswitch_de
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xc

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xd

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xe

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x10

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->msaudid:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->idfa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->udid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->user_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->android_id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->android_uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imsi:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->gaid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xb

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imei1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xc

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->imei2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xd

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->oaid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xe

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->vaid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->aaid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x10

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->msaudid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;->encodedSize(Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId$ProtoAdapter_DeviceId;->redact(Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;)Lcom/sigmob/sdk/base/models/sigdsp/pb/DeviceId;

    move-result-object v0

    return-object v0
.end method
