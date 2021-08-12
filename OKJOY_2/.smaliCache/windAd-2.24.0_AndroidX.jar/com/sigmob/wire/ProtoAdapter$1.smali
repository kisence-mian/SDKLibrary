.class final Lcom/sigmob/wire/ProtoAdapter$1;
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
    .registers 5

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->readVarint32()I

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Invalid boolean value 0x%02x"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$1;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$1;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Boolean;)V

    return-void
.end method

.method public encodedSize(Ljava/lang/Boolean;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$1;->encodedSize(Ljava/lang/Boolean;)I

    move-result p1

    return p1
.end method
