.class final Lcom/sigmob/wire/ProtoAdapter$5;
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
        "Ljava/lang/Integer;",
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
.method public decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p1}, Lcom/sigmob/wire/ProtoReader;->readFixed32()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$5;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Integer;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sigmob/wire/ProtoWriter;->writeFixed32(I)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$5;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Integer;)V

    return-void
.end method

.method public encodedSize(Ljava/lang/Integer;)I
    .registers 2

    const/4 p1, 0x4

    return p1
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$5;->encodedSize(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
