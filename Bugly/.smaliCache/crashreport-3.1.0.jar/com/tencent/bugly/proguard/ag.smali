.class public final Lcom/tencent/bugly/proguard/ag;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/proguard/ae;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "zip"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 18
    array-length v3, p1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 21
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 22
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 23
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 24
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 25
    return-object p1
.end method

.method public final b([B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    nop

    .line 31
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    .line 33
    :goto_c
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 35
    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 36
    nop

    .line 37
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    :goto_1c
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_28

    .line 40
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1c

    .line 42
    :cond_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 43
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 44
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 45
    goto :goto_c

    .line 46
    :cond_33
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 47
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 48
    return-object v1
.end method
