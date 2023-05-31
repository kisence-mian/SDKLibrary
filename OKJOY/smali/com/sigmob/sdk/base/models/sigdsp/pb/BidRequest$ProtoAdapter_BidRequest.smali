.class final Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final options:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/sigmob/wire/ProtoAdapter;->newMapAdapter(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/ProtoAdapter;)Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->options:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;
    .registers 8

    new-instance v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_ac

    packed-switch v0, :pswitch_data_b4

    :pswitch_13
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->request_id(Ljava/lang/String;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->api_version(Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->app(Lcom/sigmob/sdk/base/models/sigdsp/pb/App;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto :goto_9

    :pswitch_47
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->device(Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto :goto_9

    :pswitch_53
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->network(Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto :goto_9

    :pswitch_5f
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    sget-object v4, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :pswitch_6b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->req_timestamp(Ljava/lang/Long;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto :goto_9

    :pswitch_77
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->request_scene_type(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto :goto_9

    :pswitch_83
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->ad_is_expired(Ljava/lang/Boolean;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto/16 :goto_9

    :pswitch_90
    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->privacy(Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    goto/16 :goto_9

    :pswitch_9d
    iget-object v4, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->options:Ljava/util/Map;

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->options:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_9

    :cond_ac
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    move-result-object v0

    return-object v0

    :pswitch_data_b4
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_9d
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x7

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x8

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0x9

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xa

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->options:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v1, 0xf

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->request_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->api_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->app:Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->device:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x5

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->network:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v1}, Lcom/sigmob/wire/ProtoAdapter;->asRepeated()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v1

    const/4 v2, 0x6

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->slots:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT64:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x7

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->req_timestamp:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x8

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->request_scene_type:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->BOOL:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0x9

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->ad_is_expired:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xa

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->privacy:Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->options:Lcom/sigmob/wire/ProtoAdapter;

    const/16 v2, 0xf

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->options:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->encodedSize(Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;->newBuilder()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;

    move-result-object v1

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->api_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->api_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->api_version:Lcom/sigmob/sdk/base/models/sigdsp/pb/Version;

    :cond_14
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->app:Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->app:Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->app:Lcom/sigmob/sdk/base/models/sigdsp/pb/App;

    :cond_24
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->device:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->device:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->device:Lcom/sigmob/sdk/base/models/sigdsp/pb/Device;

    :cond_34
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->network:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    if-eqz v0, :cond_44

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->network:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->network:Lcom/sigmob/sdk/base/models/sigdsp/pb/Network;

    :cond_44
    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->slots:Ljava/util/List;

    sget-object v2, Lcom/sigmob/sdk/base/models/sigdsp/pb/AdSlot;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    invoke-static {v0, v2}, Lcom/sigmob/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/sigmob/wire/ProtoAdapter;)V

    iget-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->privacy:Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;->ADAPTER:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->privacy:Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    invoke-virtual {v0, v2}, Lcom/sigmob/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    iput-object v0, v1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->privacy:Lcom/sigmob/sdk/base/models/sigdsp/pb/Privacy;

    :cond_5b
    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$Builder;->build()Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest$ProtoAdapter_BidRequest;->redact(Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;)Lcom/sigmob/sdk/base/models/sigdsp/pb/BidRequest;

    move-result-object v0

    return-object v0
.end method
