.class public Lcom/ss/android/downloadlib/a/b/c;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 25
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 27
    :goto_8
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 28
    if-gtz v1, :cond_13

    .line 29
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 31
    :cond_13
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 32
    goto :goto_8
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/a/b/c;->a(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
