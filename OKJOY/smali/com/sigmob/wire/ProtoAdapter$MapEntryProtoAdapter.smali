.class final Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final keyAdapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final valueAdapter:Lcom/sigmob/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sigmob/wire/ProtoAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/ProtoAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<TK;>;",
            "Lcom/sigmob/wire/ProtoAdapter",
            "<TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/sigmob/wire/FieldEncoding;

    const-class v1, Ljava/util/Map$Entry;

    invoke-direct {p0, v0, v1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->keyAdapter:Lcom/sigmob/wire/ProtoAdapter;

    iput-object p2, p0, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->valueAdapter:Lcom/sigmob/wire/ProtoAdapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/sigmob/wire/ProtoReader;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoReader;",
            ")",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->keyAdapter:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->valueAdapter:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->encodedSize(Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public encodedSize(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->keyAdapter:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/sigmob/wire/ProtoAdapter$MapEntryProtoAdapter;->valueAdapter:Lcom/sigmob/wire/ProtoAdapter;

    const/4 v2, 0x2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
