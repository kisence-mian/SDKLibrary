.class public final Lcom/sigmob/a/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3

    const/16 v0, 0x1f58

    invoke-static {p0, p1, v0}, Lcom/sigmob/a/b/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 7

    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    :goto_4
    const/4 v2, -0x1

    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_12

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0
.end method
