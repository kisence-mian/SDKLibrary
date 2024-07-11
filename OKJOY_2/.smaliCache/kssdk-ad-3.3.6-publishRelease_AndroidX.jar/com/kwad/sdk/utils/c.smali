.class public Lcom/kwad/sdk/utils/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_7

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    :cond_7
    :goto_7
    return-void
.end method

.method public static a(Ljava/io/File;)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_9
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_13
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1f

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_13

    :cond_1f
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_29
    .catchall {:try_start_9 .. :try_end_23} :catchall_27

    invoke-static {v1}, Lcom/kwad/sdk/utils/c;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_27
    move-exception p0

    goto :goto_35

    :catch_29
    move-exception p0

    :try_start_2a
    const-string v2, "FileMD5Utils"

    const-string v3, "getting file md5 digest error."

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    invoke-static {v1}, Lcom/kwad/sdk/utils/c;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_35
    invoke-static {v1}, Lcom/kwad/sdk/utils/c;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/kwad/sdk/utils/c;->a(Ljava/io/File;)[B

    move-result-object p0

    if-eqz p0, :cond_12

    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_12

    :cond_b
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Lcom/kwad/sdk/utils/p;->a([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_11} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_13

    return-object p0

    :cond_12
    :goto_12
    return-object v0

    :catch_13
    move-exception p0

    goto :goto_16

    :catch_15
    move-exception p0

    :goto_16
    const-string v1, "FileMD5Utils"

    const-string v2, "cannot calculate md5 of file"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
