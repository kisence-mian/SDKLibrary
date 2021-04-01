.class public Lcom/qq/gdt/action/h/w;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)[B
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_8

    :cond_6
    move-object v0, p0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_d
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_30
    .catchall {:try_start_d .. :try_end_12} :catchall_4d

    :try_start_12
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_66
    .catchall {:try_start_12 .. :try_end_1b} :catchall_64

    move-result-object v0

    if-eqz v2, :cond_21

    :try_start_1e
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_21
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_7

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_7

    :catch_30
    move-exception v1

    move-object v2, v0

    :goto_32
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_64

    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_3e
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_44

    goto :goto_7

    :catch_44
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_7

    :catchall_4d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_50
    if-eqz v2, :cond_55

    :try_start_52
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_55
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_5b

    :cond_5a
    :goto_5a
    throw v0

    :catch_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/gdt/action/h/l;->c(Ljava/lang/String;)V

    goto :goto_5a

    :catchall_64
    move-exception v0

    goto :goto_50

    :catch_66
    move-exception v1

    goto :goto_32
.end method
