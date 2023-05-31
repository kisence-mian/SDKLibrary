.class public Lcom/tencent/smtt/utils/LogFileUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeOutputStream(Ljava/io/OutputStream;)V
    .registers 4

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string v1, "LOG_FILE"

    const-string v2, "Couldn\'t close stream!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static createHeaderText(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/LogFileUtils;->encryptKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const-string v0, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    array-length v0, v1

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    const/4 v2, 0x0

    const/4 v3, 0x3

    array-length v4, v1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    :goto_3b
    return-object v0

    :catch_3c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public static createKey()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "RC4"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "RC4"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->update([B)[B
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    const-string v1, "LOG_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static encryptKey(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "RC4"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "RC4"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->update([B)[B
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    :goto_21
    return-object v0

    :catch_22
    move-exception v0

    const-string v1, "LOG_FILE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "encrypt exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static declared-synchronized writeDataToStorage(Ljava/io/File;Ljava/lang/String;[BLjava/lang/String;Z)V
    .registers 13

    const/4 v0, 0x0

    const-class v2, Lcom/tencent/smtt/utils/LogFileUtils;

    monitor-enter v2

    :try_start_4
    invoke-static {p1, p3}, Lcom/tencent/smtt/utils/LogFileUtils;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_84

    move-result-object v1

    if-eqz v1, :cond_c

    move-object p3, v0

    move-object v0, v1

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x200000

    cmp-long v1, v4, v6

    if-lez v1, :cond_30

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    :cond_30
    sget-object v1, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    if-nez v1, :cond_40

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v3, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    :cond_40
    if-eqz p3, :cond_56

    sget-object v0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_4b} :catch_6c
    .catchall {:try_start_c .. :try_end_4b} :catchall_79

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;
    :try_end_4d
    .catchall {:try_start_4b .. :try_end_4d} :catchall_84

    if-eqz v0, :cond_54

    :try_start_4f
    sget-object v0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_54} :catch_77
    .catchall {:try_start_4f .. :try_end_54} :catchall_84

    :cond_54
    :goto_54
    monitor-exit v2

    return-void

    :cond_56
    :try_start_56
    sget-object v1, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_8a

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_6b} :catch_6c
    .catchall {:try_start_56 .. :try_end_6b} :catchall_79

    goto :goto_4b

    :catch_6c
    move-exception v0

    :try_start_6d
    sget-object v0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_84

    if-eqz v0, :cond_54

    :try_start_71
    sget-object v0, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_76} :catch_77
    .catchall {:try_start_71 .. :try_end_76} :catchall_84

    goto :goto_54

    :catch_77
    move-exception v0

    goto :goto_54

    :catchall_79
    move-exception v0

    :try_start_7a
    sget-object v1, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_84

    if-eqz v1, :cond_83

    :try_start_7e
    sget-object v1, Lcom/tencent/smtt/utils/LogFileUtils;->a:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_83} :catch_87
    .catchall {:try_start_7e .. :try_end_83} :catchall_84

    :cond_83
    :goto_83
    :try_start_83
    throw v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_87
    move-exception v1

    goto :goto_83

    nop

    :array_8a
    .array-data 1
        0xat
        0xat
    .end array-data
.end method
