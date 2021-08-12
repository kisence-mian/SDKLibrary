.class public Lcom/kwad/sdk/core/imageloader/core/assist/FlushedInputStream;
.super Ljava/io/FilterInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_3
    cmp-long v4, v2, p1

    if-gez v4, :cond_1e

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/core/assist/FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v5, p1, v2

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_1c

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/core/assist/FlushedInputStream;->read()I

    move-result v4

    if-gez v4, :cond_1a

    goto :goto_1e

    :cond_1a
    const-wide/16 v4, 0x1

    :cond_1c
    add-long/2addr v2, v4

    goto :goto_3

    :cond_1e
    :goto_1e
    return-wide v2
.end method
