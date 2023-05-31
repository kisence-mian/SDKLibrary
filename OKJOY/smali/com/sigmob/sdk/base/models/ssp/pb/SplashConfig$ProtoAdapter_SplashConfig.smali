.class final Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;
    .registers 8

    new-instance v1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;

    invoke-direct {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v2

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_47

    packed-switch v0, :pswitch_data_50

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->showDuration(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->cacheTop(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;

    goto :goto_9

    :pswitch_3b
    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->material_expired_time(Ljava/lang/Integer;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;

    goto :goto_9

    :cond_47
    invoke-virtual {p1, v2, v3}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->UINT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->showDuration:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->cacheTop:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->INT32:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->material_expired_time:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;->encodedSize(Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)I

    move-result v0

    return v0
.end method

.method public redact(Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;->newBuilder()Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$Builder;->build()Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig$ProtoAdapter_SplashConfig;->redact(Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;)Lcom/sigmob/sdk/base/models/ssp/pb/SplashConfig;

    move-result-object v0

    return-object v0
.end method
