.class final Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$ProtoAdapter_WebEvent;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_WebEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;
    .registers 8

    new-instance v0, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;

    invoke-direct {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    :goto_9
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3b

    packed-switch v3, :pswitch_data_44

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->peekFieldEncoding()Lcom/sigmob/wire/FieldEncoding;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sigmob/wire/FieldEncoding;->rawProtoAdapter()Lcom/sigmob/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;->addUnknownField(ILcom/sigmob/wire/FieldEncoding;Ljava/lang/Object;)Lcom/sigmob/wire/Message$Builder;

    goto :goto_9

    :pswitch_23
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;->event_name(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;

    goto :goto_9

    :pswitch_2f
    sget-object v3, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;->event_type(Ljava/lang/String;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;

    goto :goto_9

    :cond_3b
    invoke-virtual {p1, v1, v2}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$ProtoAdapter_WebEvent;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;)V
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;->event_type:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;->event_name:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$ProtoAdapter_WebEvent;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;)I
    .registers 6

    sget-object v0, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;->event_type:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/sigmob/wire/ProtoAdapter;->STRING:Lcom/sigmob/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;->event_name:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;->unknownFields()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$ProtoAdapter_WebEvent;->encodedSize(Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;)I

    move-result p1

    return p1
.end method

.method public redact(Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;
    .registers 2

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;->newBuilder()Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;->clearUnknownFields()Lcom/sigmob/wire/Message$Builder;

    invoke-virtual {p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$Builder;->build()Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    invoke-virtual {p0, p1}, Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent$ProtoAdapter_WebEvent;->redact(Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;)Lcom/sigmob/sdk/common/models/sigdsp/pb/WebEvent;

    move-result-object p1

    return-object p1
.end method