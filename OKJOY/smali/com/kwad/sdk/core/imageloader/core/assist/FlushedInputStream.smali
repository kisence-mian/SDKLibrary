.class public Lcom/kwad/sdk/core/imageloader/core/assist/FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source ""


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 12

    const-wide/16 v4, 0x0

    move-wide v2, v4

    :goto_3
    cmp-long v0, v2, p1

    if-gez v0, :cond_19

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v2

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long v6, v0, v4

    if-nez v6, :cond_1c

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-gez v0, :cond_1a

    :cond_19
    return-wide v2

    :cond_1a
    const-wide/16 v0, 0x1

    :cond_1c
    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_3
.end method
