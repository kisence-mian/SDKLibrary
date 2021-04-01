.class public Lcom/pgl/sys/ces/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const-class v1, Lcom/pgl/sys/ces/a/e;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "cid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {v2}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_63
    .catchall {:try_start_3 .. :try_end_38} :catchall_c0

    move-result v3

    if-lez v3, :cond_3d

    :cond_3b
    :goto_3b
    monitor-exit v1

    return-object v0

    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "cid"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x1000

    new-array v4, v4, [B

    :goto_54
    const/4 v5, 0x0

    const/16 v6, 0x1000

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_71

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_62} :catch_63
    .catchall {:try_start_3d .. :try_end_62} :catchall_c0

    goto :goto_54

    :catch_63
    move-exception v0

    :try_start_64
    const-string v0, "0[<!>]EXCEPTION[<!>]"

    :cond_66
    :goto_66
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3b

    :cond_6e
    const-string v0, "0[<!>]ERROR[<!>]"
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_c0

    goto :goto_3b

    :cond_71
    :try_start_71
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_66

    :cond_a2
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput-byte v5, v3, v4

    const-wide/16 v4, 0x10

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v2}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_be} :catch_63
    .catchall {:try_start_71 .. :try_end_be} :catchall_c0

    move-result-object v0

    goto :goto_66

    :catchall_c0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x1000

    if-nez p0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    new-array v0, v5, [B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_e
    :try_start_e
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1d

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_24

    :cond_1d
    if-ge v2, v5, :cond_e

    :goto_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_50
    .catchall {:try_start_1 .. :try_end_a} :catchall_71

    move-result-object v2

    :try_start_b
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_9b
    .catchall {:try_start_b .. :try_end_14} :catchall_90

    :try_start_14
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_9f
    .catchall {:try_start_14 .. :try_end_1d} :catchall_95

    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    invoke-static {v3}, Lcom/pgl/sys/ces/a/e;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_a2
    .catchall {:try_start_1d .. :try_end_35} :catchall_99

    move-result-object v0

    if-eqz v4, :cond_3b

    :try_start_38
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_46

    :cond_3b
    :goto_3b
    if-eqz v3, :cond_40

    :try_start_3d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_4b

    :cond_40
    :goto_40
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_45
    :goto_45
    return-object v0

    :catch_46
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catch_50
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    :goto_54
    :try_start_54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_99

    if-eqz v4, :cond_5c

    :try_start_59
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_67

    :cond_5c
    :goto_5c
    if-eqz v3, :cond_61

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_6c

    :cond_61
    :goto_61
    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    goto :goto_45

    :catch_67
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    :catch_6c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_61

    :catchall_71
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    :goto_76
    if-eqz v4, :cond_7b

    :try_start_78
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_86

    :cond_7b
    :goto_7b
    if-eqz v3, :cond_80

    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_8b

    :cond_80
    :goto_80
    if-eqz v2, :cond_85

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_85
    throw v0

    :catch_86
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    :catch_8b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80

    :catchall_90
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    goto :goto_76

    :catchall_95
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_76

    :catchall_99
    move-exception v0

    goto :goto_76

    :catch_9b
    move-exception v1

    move-object v3, v0

    move-object v4, v0

    goto :goto_54

    :catch_9f
    move-exception v1

    move-object v3, v0

    goto :goto_54

    :catch_a2
    move-exception v1

    goto :goto_54
.end method
