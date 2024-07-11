.class public final Lcom/tapjoy/internal/jz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7

    .line 190
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 191
    const-wide/16 v1, 0x0

    .line 193
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 194
    const/4 v4, -0x1

    if-eq v3, v4, :cond_14

    .line 197
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 198
    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 199
    goto :goto_6

    .line 200
    :cond_14
    return-wide v1
.end method
