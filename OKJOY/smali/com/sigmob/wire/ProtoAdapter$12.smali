.class final Lcom/sigmob/wire/ProtoAdapter$12;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Ljava/lang/String;",
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
.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$12;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$12;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/String;)V

    return-void
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$12;->encodedSize(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encodedSize(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lcom/sigmob/wire/okio/Utf8;->size(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
