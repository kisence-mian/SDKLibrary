.class final Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MapProtoAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final entryAdapter:Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/ProtoAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TK;>;",
            "Lcom/sigmob/wire/ProtoAdapter<",
            "TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    new-instance v0, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;

    invoke-direct {v0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;-><init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/ProtoAdapter;)V

    iput-object v0, p0, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->entryAdapter:Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/sigmob/wire/ProtoReader;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoReader;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_6
    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->nextTag()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    packed-switch v4, :pswitch_data_40

    goto :goto_6

    :pswitch_11
    iget-object v3, p0, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->entryAdapter:Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;

    iget-object v3, v3, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->valueAdapter:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    :pswitch_1a
    iget-object v2, p0, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->entryAdapter:Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;

    iget-object v2, v2, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->keyAdapter:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_6

    :cond_23
    invoke-virtual {p1, v0, v1}, Lcom/sigmob/wire/ProtoReader;->endMessage(J)V

    if-eqz v2, :cond_37

    if-eqz v3, :cond_2f

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Map entry with null value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Map entry with null key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/util/Map;)V

    return-void
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Repeated values can only be encoded with a tag."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/util/Map;)V

    return-void
.end method

.method public encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "I",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->entryAdapter:Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->encodedSize(Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public encodedSize(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Repeated values can only be sized with a tag."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic encodedSizeWithTag(ILjava/lang/Object;)I
    .registers 3

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->encodedSizeWithTag(ILjava/util/Map;)I

    move-result p1

    return p1
.end method

.method public encodedSizeWithTag(ILjava/util/Map;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "TK;TV;>;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->entryAdapter:Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9

    :cond_1d
    return v0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$MapProtoAdapter;->redact(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public redact(Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
