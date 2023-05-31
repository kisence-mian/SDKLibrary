.class public abstract Lcom/sigmob/wire/EnumAdapter;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/sigmob/wire/WireEnum;",
        ">",
        "Lcom/sigmob/wire/ProtoAdapter",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/sigmob/wire/FieldEncoding;->VARINT:Lcom/sigmob/wire/FieldEncoding;

    invoke-direct {p0, v0, p1}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/WireEnum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoReader;",
            ")TE;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->readVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/EnumAdapter;->fromValue(I)Lcom/sigmob/wire/WireEnum;

    move-result-object v1

    if-nez v1, :cond_12

    new-instance v1, Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;

    iget-object v2, p0, Lcom/sigmob/wire/EnumAdapter;->javaType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lcom/sigmob/wire/ProtoAdapter$EnumConstantNotFoundException;-><init>(ILjava/lang/Class;)V

    throw v1

    :cond_12
    return-object v1
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/EnumAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/WireEnum;

    move-result-object v0

    return-object v0
.end method

.method public final encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/WireEnum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "TE;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/sigmob/wire/WireEnum;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/WireEnum;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/EnumAdapter;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/WireEnum;)V

    return-void
.end method

.method public final encodedSize(Lcom/sigmob/wire/WireEnum;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sigmob/wire/WireEnum;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/sigmob/wire/ProtoWriter;->varint32Size(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/sigmob/wire/WireEnum;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/EnumAdapter;->encodedSize(Lcom/sigmob/wire/WireEnum;)I

    move-result v0

    return v0
.end method

.method protected abstract fromValue(I)Lcom/sigmob/wire/WireEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method
