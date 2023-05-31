.class public Lcom/androidquery/util/PredefinedBAOS;
.super Ljava/io/ByteArrayOutputStream;
.source "PredefinedBAOS.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lcom/androidquery/util/PredefinedBAOS;->count:I

    iget-object v1, p0, Lcom/androidquery/util/PredefinedBAOS;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 39
    iget-object v0, p0, Lcom/androidquery/util/PredefinedBAOS;->buf:[B

    .line 42
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_9
.end method
