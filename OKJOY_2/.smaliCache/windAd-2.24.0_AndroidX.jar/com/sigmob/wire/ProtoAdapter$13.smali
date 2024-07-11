.class final Lcom/sigmob/wire/ProtoAdapter$13;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Lcom/sigmob/wire/okio/ByteString;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/okio/ByteString;
    .registers 2

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->readBytes()Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$13;->decode(Lcom/sigmob/wire/ProtoReader;)Lcom/sigmob/wire/okio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/okio/ByteString;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeBytes(Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$13;->encode(Lcom/sigmob/wire/ProtoWriter;Lcom/sigmob/wire/okio/ByteString;)V

    return-void
.end method

.method public encodedSize(Lcom/sigmob/wire/okio/ByteString;)I
    .registers 2

    invoke-virtual {p1}, Lcom/sigmob/wire/okio/ByteString;->size()I

    move-result p1

    return p1
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/sigmob/wire/okio/ByteString;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$13;->encodedSize(Lcom/sigmob/wire/okio/ByteString;)I

    move-result p1

    return p1
.end method
