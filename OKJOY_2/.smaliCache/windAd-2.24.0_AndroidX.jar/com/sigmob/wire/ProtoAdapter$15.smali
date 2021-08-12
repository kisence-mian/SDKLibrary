.class Lcom/sigmob/wire/ProtoAdapter$15;
.super Lcom/sigmob/wire/ProtoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/wire/ProtoAdapter;->createRepeated()Lcom/sigmob/wire/ProtoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sigmob/wire/ProtoAdapter<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sigmob/wire/ProtoAdapter;


# direct methods
.method constructor <init>(Lcom/sigmob/wire/ProtoAdapter;Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/wire/ProtoAdapter$15;->this$0:Lcom/sigmob/wire/ProtoAdapter;

    invoke-direct {p0, p2, p3}, Lcom/sigmob/wire/ProtoAdapter;-><init>(Lcom/sigmob/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$15;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/sigmob/wire/ProtoReader;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoReader;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/wire/ProtoAdapter$15;->this$0:Lcom/sigmob/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/sigmob/wire/ProtoAdapter;->decode(Lcom/sigmob/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic encode(Lcom/sigmob/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$15;->encode(Lcom/sigmob/wire/ProtoWriter;Ljava/util/List;)V

    return-void
.end method

.method public encode(Lcom/sigmob/wire/ProtoWriter;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Repeated values can only be encoded with a tag."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sigmob/wire/ProtoAdapter$15;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/util/List;)V

    return-void
.end method

.method public encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sigmob/wire/ProtoWriter;",
            "I",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    iget-object v2, p0, Lcom/sigmob/wire/ProtoAdapter$15;->this$0:Lcom/sigmob/wire/ProtoAdapter;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/sigmob/wire/ProtoAdapter;->encodeWithTag(Lcom/sigmob/wire/ProtoWriter;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$15;->encodedSize(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public encodedSize(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Repeated values can only be sized with a tag."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic encodedSizeWithTag(ILjava/lang/Object;)I
    .registers 3

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/wire/ProtoAdapter$15;->encodedSizeWithTag(ILjava/util/List;)I

    move-result p1

    return p1
.end method

.method public encodedSizeWithTag(ILjava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_16

    iget-object v3, p0, Lcom/sigmob/wire/ProtoAdapter$15;->this$0:Lcom/sigmob/wire/ProtoAdapter;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sigmob/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return v2
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sigmob/wire/ProtoAdapter$15;->redact(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public redact(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
