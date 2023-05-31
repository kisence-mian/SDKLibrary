.class public final Lcom/mintegral/msdk/base/utils/q;
.super Ljava/lang/Object;
.source "SerializeTools.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 32
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 34
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 44
    :goto_1a
    return-object v0

    .line 40
    :catch_1b
    move-exception v0

    .line 41
    const-string v1, "SerializeTools"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 13
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 19
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 20
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 22
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1e} :catch_1f

    .line 27
    :goto_1e
    return-object v0

    .line 23
    :catch_1f
    move-exception v0

    .line 24
    const-string v1, "SerializeTools"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    const-string v0, ""

    goto :goto_1e
.end method
