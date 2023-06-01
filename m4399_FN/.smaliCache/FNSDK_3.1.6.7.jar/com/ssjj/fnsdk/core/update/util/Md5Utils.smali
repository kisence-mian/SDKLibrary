.class public Lcom/ssjj/fnsdk/core/update/util/Md5Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ssjj/fnsdk/core/update/util/Md5Utils;->md5(Ljava/io/File;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/io/File;I)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_52
    .catchall {:try_start_1 .. :try_end_a} :catchall_50

    :try_start_a
    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    const/16 v4, 0x2000

    new-array v4, v4, [B

    const-wide/16 v5, 0x0

    :goto_16
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1e

    goto :goto_39

    :cond_1e
    int-to-long v8, v7

    add-long/2addr v5, v8

    const/4 v8, 0x0

    if-eqz p1, :cond_4a

    int-to-long v9, p1

    sub-long v9, v1, v9

    cmp-long v11, v5, v9

    if-lez v11, :cond_4a

    sub-long/2addr v5, v9

    long-to-int p1, v5

    sub-int/2addr v7, p1

    const/4 p1, 0x2

    sub-int/2addr v7, p1

    invoke-virtual {p0, v4, v8, v7}, Ljava/security/MessageDigest;->update([BII)V

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/util/DigitUtils;->short2Byte(S)[B

    move-result-object v1

    invoke-virtual {p0, v1, v8, p1}, Ljava/security/MessageDigest;->update([BII)V

    :goto_39
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/util/DigitUtils;->byte2Hex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_41} :catch_4e
    .catchall {:try_start_a .. :try_end_41} :catchall_5d

    :try_start_41
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_5c

    :catch_45
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :cond_4a
    :try_start_4a
    invoke-virtual {p0, v4, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5d

    goto :goto_16

    :catch_4e
    move-exception p0

    goto :goto_54

    :catchall_50
    move-exception p0

    goto :goto_5f

    :catch_52
    move-exception p0

    move-object v3, v0

    :goto_54
    :try_start_54
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_5d

    if-eqz v3, :cond_5c

    :try_start_59
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_45

    :cond_5c
    :goto_5c
    return-object v0

    :catchall_5d
    move-exception p0

    move-object v0, v3

    :goto_5f
    if-eqz v0, :cond_69

    :try_start_61
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_69
    :goto_69
    throw p0
.end method
