.class public Lcom/qq/e/comm/util/FileUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyTo(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_63

    if-nez p1, :cond_6

    goto :goto_63

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_42

    if-nez v3, :cond_23

    invoke-static {p0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    return v0

    :cond_23
    :try_start_23
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_42

    const/16 v2, 0x1000

    :try_start_2a
    new-array v2, v2, [B

    :goto_2c
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_36

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_3d

    goto :goto_2c

    :cond_36
    invoke-static {p0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v3}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    return v1

    :catchall_3d
    move-exception v2

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_43

    :catchall_42
    move-exception v3

    :goto_43
    :try_start_43
    const-string v4, "Exception while copy from InputStream to File %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_5b

    invoke-static {p0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    return v0

    :catchall_5b
    move-exception p1

    invoke-static {p0}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/InputStream;)V

    invoke-static {v2}, Lcom/qq/e/comm/util/FileUtil;->tryClose(Ljava/io/OutputStream;)V

    throw p1

    :cond_63
    :goto_63
    return v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTempFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/qq/e/comm/util/Md5Util;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".temp"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static renameTo(Ljava/io/File;Ljava/io/File;)Z
    .registers 3

    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_19

    :cond_b
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/qq/e/comm/util/FileUtil;->copyTo(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x1

    return p0

    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public static tryClose(Ljava/io/InputStream;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    :cond_7
    return-void
.end method

.method public static tryClose(Ljava/io/OutputStream;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    :cond_7
    return-void
.end method
