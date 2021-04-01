.class final Lcom/sigmob/wire/ProtoAdapter$11;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter",
        "<",
        "Ljava/lang/Double;",
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
.method public decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Double;
    .registers 4

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$11;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Double;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sigmob/wire/ProtoWriter;->writeFixed64(J)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$11;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Double;)V

    return-void
.end method

.method public encodedSize(Ljava/lang/Double;)I
    .registers 3

    const/16 v0, 0x8

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$11;->encodedSize(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method
