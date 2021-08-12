.class public Lcom/pgl/sys/ces/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    const-class v0, Lcom/pgl/sys/ces/a/e;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_69

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 600 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_f0

    if-lez v3, :cond_69

    monitor-exit v0

    return-object v2

    :cond_69
    :try_start_69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "cid"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v4, v3, [B

    :goto_80
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8c

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_80

    :cond_8c
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_bd

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d9

    :cond_bd
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {p0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x2

    aput-byte v3, v2, v5

    const-wide/16 v3, 0x10

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v1}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_d9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 600 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pgl/sys/ces/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ef
    .catchall {:try_start_69 .. :try_end_ef} :catchall_f0

    goto :goto_f3

    :catchall_f0
    move-exception p0

    :try_start_f1
    const-string p0, "0[<!>]EXCEPTION[<!>]"

    :goto_f3
    if-eqz p0, :cond_fb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_fd

    :cond_fb
    const-string p0, "0[<!>]ERROR[<!>]"
    :try_end_fd
    .catchall {:try_start_f1 .. :try_end_fd} :catchall_ff

    :cond_fd
    monitor-exit v0

    return-object p0

    :catchall_ff
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    const/16 v0, 0x1000

    new-array v1, v0, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_e
    :try_start_e
    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1d

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_20

    :cond_1d
    if-ge v3, v0, :cond_e

    goto :goto_24

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "sh"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_5e
    .catchall {:try_start_1 .. :try_end_b} :catchall_5a

    :try_start_b
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_57
    .catchall {:try_start_b .. :try_end_14} :catchall_54

    :try_start_14
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_51
    .catchall {:try_start_14 .. :try_end_1d} :catchall_4e

    :try_start_1d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    const/16 p0, 0xa

    invoke-virtual {v2, p0}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-static {v3}, Lcom/pgl/sys/ces/a/e;->a(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_36} :catch_4c
    .catchall {:try_start_1d .. :try_end_36} :catchall_7d

    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_46
    if-eqz v1, :cond_7c

    :goto_48
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_7c

    :catch_4c
    move-exception p0

    goto :goto_62

    :catchall_4e
    move-exception p0

    move-object v3, v0

    goto :goto_7e

    :catch_51
    move-exception p0

    move-object v3, v0

    goto :goto_62

    :catchall_54
    move-exception p0

    move-object v3, v0

    goto :goto_7f

    :catch_57
    move-exception p0

    move-object v2, v0

    goto :goto_61

    :catchall_5a
    move-exception p0

    move-object v1, v0

    move-object v3, v1

    goto :goto_7f

    :catch_5e
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_61
    move-object v3, v2

    :goto_62
    :try_start_62
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_7d

    if-eqz v2, :cond_6f

    :try_start_67
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6f
    :goto_6f
    if-eqz v3, :cond_79

    :try_start_71
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_79
    :goto_79
    if-eqz v1, :cond_7c

    goto :goto_48

    :cond_7c
    :goto_7c
    return-object v0

    :catchall_7d
    move-exception p0

    :goto_7e
    move-object v0, v2

    :goto_7f
    if-eqz v0, :cond_89

    :try_start_81
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_89

    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_89
    :goto_89
    if-eqz v3, :cond_93

    :try_start_8b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_93
    :goto_93
    if-eqz v1, :cond_98

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_98
    throw p0
.end method
