.class final Lcom/mintegral/msdk/base/common/net/e$a;
.super Ljava/lang/Object;
.source "CommonHttpMultipartEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/common/net/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/common/net/e;

.field private b:[B

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/base/common/net/e;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 291
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/net/e$a;->a:Lcom/mintegral/msdk/base/common/net/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-direct {p0, p2, p4, p5}, Lcom/mintegral/msdk/base/common/net/e$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/e$a;->b:[B

    .line 293
    iput-object p3, p0, Lcom/mintegral/msdk/base/common/net/e$a;->c:Ljava/io/File;

    .line 294
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    .prologue
    .line 305
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 307
    :try_start_5
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e$a;->a:Lcom/mintegral/msdk/base/common/net/e;

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/net/e;->a(Lcom/mintegral/msdk/base/common/net/e;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 308
    invoke-static {p1, p2}, Lcom/mintegral/msdk/base/common/net/e;->b(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 309
    invoke-static {p3}, Lcom/mintegral/msdk/base/common/net/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 310
    invoke-static {}, Lcom/mintegral/msdk/base/common/net/e;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 311
    invoke-static {}, Lcom/mintegral/msdk/base/common/net/e;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2a} :catch_2f

    .line 318
    :goto_2a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 312
    :catch_2f
    move-exception v0

    .line 313
    const-string v2, "HttpMultipartEntity"

    const-string v3, "FileParam createHeader to RequestParamBufferStream exception"

    invoke-static {v2, v3, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method


# virtual methods
.method public final a()J
    .registers 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e$a;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {}, Lcom/mintegral/msdk/base/common/net/e;->b()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 328
    iget-object v2, p0, Lcom/mintegral/msdk/base/common/net/e$a;->b:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e$a;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 339
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e$a;->a:Lcom/mintegral/msdk/base/common/net/e;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/e$a;->b:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/common/net/e;->a(Lcom/mintegral/msdk/base/common/net/e;I)V

    .line 340
    const/4 v2, 0x0

    .line 342
    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e$a;->c:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_15} :catch_71
    .catchall {:try_start_e .. :try_end_15} :catchall_5e

    .line 343
    const/16 v0, 0x1000

    :try_start_17
    new-array v0, v0, [B

    .line 345
    :goto_19
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_34

    .line 346
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 347
    iget-object v3, p0, Lcom/mintegral/msdk/base/common/net/e$a;->a:Lcom/mintegral/msdk/base/common/net/e;

    invoke-static {v3, v2}, Lcom/mintegral/msdk/base/common/net/e;->a(Lcom/mintegral/msdk/base/common/net/e;I)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_29} :catch_2a
    .catchall {:try_start_17 .. :try_end_29} :catchall_6f

    goto :goto_19

    .line 353
    :catch_2a
    move-exception v0

    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_6f

    .line 356
    if-eqz v1, :cond_33

    .line 357
    :try_start_30
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_55

    .line 362
    :cond_33
    :goto_33
    return-void

    .line 349
    :cond_34
    :try_start_34
    invoke-static {}, Lcom/mintegral/msdk/base/common/net/e;->b()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 350
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/e$a;->a:Lcom/mintegral/msdk/base/common/net/e;

    invoke-static {}, Lcom/mintegral/msdk/base/common/net/e;->b()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/common/net/e;->a(Lcom/mintegral/msdk/base/common/net/e;I)V

    .line 351
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_48} :catch_2a
    .catchall {:try_start_34 .. :try_end_48} :catchall_6f

    .line 357
    :try_start_48
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_33

    .line 359
    :catch_4c
    move-exception v0

    .line 360
    const-string v1, "HttpMultipartEntity"

    const-string v2, "Cannot close input stream"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 359
    :catch_55
    move-exception v0

    .line 360
    const-string v1, "HttpMultipartEntity"

    const-string v2, "Cannot close input stream"

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    .line 355
    :catchall_5e
    move-exception v0

    move-object v1, v2

    .line 356
    :goto_60
    if-eqz v1, :cond_65

    .line 357
    :try_start_62
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66

    .line 361
    :cond_65
    :goto_65
    throw v0

    .line 359
    :catch_66
    move-exception v1

    .line 360
    const-string v2, "HttpMultipartEntity"

    const-string v3, "Cannot close input stream"

    invoke-static {v2, v3, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65

    .line 355
    :catchall_6f
    move-exception v0

    goto :goto_60

    .line 353
    :catch_71
    move-exception v0

    move-object v1, v2

    goto :goto_2b
.end method
