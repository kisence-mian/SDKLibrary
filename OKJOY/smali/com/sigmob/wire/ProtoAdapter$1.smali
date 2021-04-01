.class final Lcom/sigmob/wire/ProtoAdapter$1;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Ljava/lang/Boolean;",
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
.method public decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Boolean;
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->readVarint32()I

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object v0

    :cond_a
    if-ne v0, v3, :cond_f

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid boolean value 0x%02x"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$1;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Boolean;)V
    .registers 4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {p1, v0}, Lcom/sigmob/wire/ProtoWriter;->writeVarint32(I)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$1;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Boolean;)V

    return-void
.end method

.method public encodedSize(Ljava/lang/Boolean;)I
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$1;->encodedSize(Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method
