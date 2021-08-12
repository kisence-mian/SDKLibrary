.class abstract Lcom/bytedance/embedapplog/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z


# direct methods
.method constructor <init>(ZZ)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/u;->b:Z

    .line 41
    iput-boolean p2, p0, Lcom/bytedance/embedapplog/u;->c:Z

    .line 42
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/embedapplog/u;->d:Z

    .line 43
    return-void
.end method

.method constructor <init>(ZZZ)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcom/bytedance/embedapplog/u;->b:Z

    .line 47
    iput-boolean p2, p0, Lcom/bytedance/embedapplog/u;->c:Z

    .line 48
    iput-boolean p3, p0, Lcom/bytedance/embedapplog/u;->d:Z

    .line 49
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 72
    return-object p2

    .line 74
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.snssdk.api.embed/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 77
    nop

    .line 78
    nop

    .line 80
    const/4 v1, 0x0

    :try_start_42
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_59

    .line 82
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_59

    .line 83
    nop

    .line 116
    nop

    .line 121
    nop

    .line 123
    nop

    .line 128
    nop

    .line 83
    return-object p2

    .line 86
    :cond_59
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v2, "rwd"

    invoke-direct {p1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_65} :catch_c7
    .catchall {:try_start_42 .. :try_end_65} :catchall_c4

    .line 88
    :try_start_65
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v1

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_71} :catch_bf
    .catchall {:try_start_65 .. :try_end_71} :catchall_bb

    const-string v2, "UTF-8"

    if-eqz v0, :cond_9e

    .line 90
    const/16 v0, 0x81

    .line 91
    :try_start_77
    new-array v3, v0, [B

    .line 92
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    .line 93
    if-lez v5, :cond_9e

    if-ge v5, v0, :cond_9e

    .line 94
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 95
    invoke-static {v0}, Lcom/bytedance/embedapplog/aa;->d(Ljava/lang/String;)Z

    move-result v3
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8b} :catch_bf
    .catchall {:try_start_77 .. :try_end_8b} :catchall_bb

    if-eqz v3, :cond_9e

    .line 96
    nop

    .line 116
    if-eqz v1, :cond_96

    .line 117
    :try_start_90
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_96

    .line 119
    :catch_94
    move-exception p2

    goto :goto_97

    .line 121
    :cond_96
    :goto_96
    nop

    .line 123
    :goto_97
    nop

    .line 124
    :try_start_98
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 128
    goto :goto_9d

    .line 126
    :catch_9c
    move-exception p1

    .line 96
    :goto_9d
    return-object v0

    .line 101
    :cond_9e
    :try_start_9e
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 102
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_aa} :catch_bf
    .catchall {:try_start_9e .. :try_end_aa} :catchall_bb

    .line 104
    nop

    .line 116
    if-eqz v1, :cond_b3

    .line 117
    :try_start_ad
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_b3

    .line 119
    :catch_b1
    move-exception v0

    goto :goto_b4

    .line 121
    :cond_b3
    :goto_b3
    nop

    .line 123
    :goto_b4
    nop

    .line 124
    :try_start_b5
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_b8} :catch_b9

    .line 128
    goto :goto_ba

    .line 126
    :catch_b9
    move-exception p1

    .line 104
    :goto_ba
    return-object p2

    .line 115
    :catchall_bb
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_fb

    .line 105
    :catch_bf
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_c9

    .line 115
    :catchall_c4
    move-exception p1

    move-object v0, v1

    goto :goto_fb

    .line 105
    :catch_c7
    move-exception p1

    move-object v0, v1

    .line 106
    :goto_c9
    :try_start_c9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_e7

    .line 107
    invoke-static {}, Lcom/bytedance/embedapplog/k;->b()Lcom/bytedance/embedapplog/k;

    move-result-object v2

    iget-object v2, v2, Lcom/bytedance/embedapplog/k;->a:Landroid/app/Application;

    .line 108
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e1

    .line 111
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    goto :goto_e7

    .line 109
    :cond_e1
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_e7
    .catchall {:try_start_c9 .. :try_end_e7} :catchall_fa

    .line 116
    :cond_e7
    :goto_e7
    if-eqz v1, :cond_ef

    .line 117
    :try_start_e9
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_ef

    .line 119
    :catch_ed
    move-exception p1

    goto :goto_f0

    .line 121
    :cond_ef
    :goto_ef
    nop

    .line 123
    :goto_f0
    if-eqz v0, :cond_f8

    .line 124
    :try_start_f2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_f8

    .line 126
    :catch_f6
    move-exception p1

    .line 129
    goto :goto_f9

    .line 128
    :cond_f8
    :goto_f8
    nop

    .line 130
    :goto_f9
    return-object p2

    .line 115
    :catchall_fa
    move-exception p1

    .line 116
    :goto_fb
    if-eqz v1, :cond_103

    .line 117
    :try_start_fd
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_101

    goto :goto_103

    .line 119
    :catch_101
    move-exception p2

    goto :goto_104

    .line 121
    :cond_103
    :goto_103
    nop

    .line 123
    :goto_104
    if-eqz v0, :cond_10c

    .line 124
    :try_start_106
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_10c

    .line 126
    :catch_10a
    move-exception p2

    goto :goto_10d

    .line 128
    :cond_10c
    :goto_10c
    nop

    :goto_10d
    throw p1
.end method

.method protected abstract a(Lorg/json/JSONObject;)Z
.end method
