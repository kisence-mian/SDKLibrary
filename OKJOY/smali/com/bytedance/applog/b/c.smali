.class abstract Lcom/bytedance/applog/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z


# direct methods
.method constructor <init>(ZZ)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/bytedance/applog/b/c;->b:Z

    .line 41
    iput-boolean p2, p0, Lcom/bytedance/applog/b/c;->c:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/applog/b/c;->d:Z

    .line 43
    return-void
.end method

.method constructor <init>(ZZZ)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcom/bytedance/applog/b/c;->b:Z

    .line 47
    iput-boolean p2, p0, Lcom/bytedance/applog/b/c;->c:Z

    .line 48
    iput-boolean p3, p0, Lcom/bytedance/applog/b/c;->d:Z

    .line 49
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 130
    :cond_d
    :goto_d
    return-object p2

    .line 74
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Android/data/com.snssdk.api/cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    const/4 v3, 0x0

    .line 78
    const/4 v4, 0x0

    .line 80
    :try_start_42
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_60

    .line 82
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_50} :catch_bf
    .catchall {:try_start_42 .. :try_end_50} :catchall_108

    move-result v0

    if-nez v0, :cond_60

    .line 116
    if-eqz v1, :cond_58

    .line 117
    :try_start_55
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_f9

    .line 123
    :cond_58
    :goto_58
    if-eqz v1, :cond_d

    .line 124
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_d

    .line 126
    :catch_5e
    move-exception v0

    goto :goto_d

    .line 86
    :cond_60
    :try_start_60
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6c} :catch_bf
    .catchall {:try_start_60 .. :try_end_6c} :catchall_108

    .line 88
    :try_start_6c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_73} :catch_115
    .catchall {:try_start_6c .. :try_end_73} :catchall_10b

    move-result-object v1

    .line 89
    :try_start_74
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 90
    const/16 v0, 0x81

    .line 91
    new-array v3, v0, [B

    .line 92
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 93
    if-lez v4, :cond_a2

    if-ge v4, v0, :cond_a2

    .line 94
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v0, v3, v5, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 95
    invoke-static {v0}, Lcom/bytedance/applog/b/i;->d(Ljava/lang/String;)Z
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_92} :catch_11a
    .catchall {:try_start_74 .. :try_end_92} :catchall_110

    move-result v3

    if-eqz v3, :cond_a2

    .line 116
    if-eqz v1, :cond_9a

    .line 117
    :try_start_97
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_fc

    .line 123
    :cond_9a
    :goto_9a
    if-eqz v2, :cond_9f

    .line 124
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_fe

    :cond_9f
    :goto_9f
    move-object p2, v0

    .line 96
    goto/16 :goto_d

    .line 101
    :cond_a2
    :try_start_a2
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 102
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 103
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b0} :catch_11a
    .catchall {:try_start_a2 .. :try_end_b0} :catchall_110

    .line 116
    if-eqz v1, :cond_b5

    .line 117
    :try_start_b2
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_100

    .line 123
    :cond_b5
    :goto_b5
    if-eqz v2, :cond_d

    .line 124
    :try_start_b7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bc

    goto/16 :goto_d

    .line 126
    :catch_bc
    move-exception v0

    goto/16 :goto_d

    .line 105
    :catch_bf
    move-exception v0

    move-object v2, v1

    .line 106
    :goto_c1
    :try_start_c1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_ea

    .line 107
    invoke-static {}, Lcom/bytedance/applog/a/e;->b()Lcom/bytedance/applog/a/e;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/applog/a/e;->a:Landroid/app/Application;

    .line 108
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_e7

    .line 109
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_db
    .catchall {:try_start_c1 .. :try_end_db} :catchall_db

    .line 115
    :catchall_db
    move-exception v0

    .line 116
    :goto_dc
    if-eqz v2, :cond_e1

    .line 117
    :try_start_de
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_104

    .line 123
    :cond_e1
    :goto_e1
    if-eqz v1, :cond_e6

    .line 124
    :try_start_e3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_106

    .line 128
    :cond_e6
    :goto_e6
    throw v0

    .line 111
    :cond_e7
    :try_start_e7
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_db

    .line 116
    :cond_ea
    if-eqz v2, :cond_ef

    .line 117
    :try_start_ec
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_102

    .line 123
    :cond_ef
    :goto_ef
    if-eqz v1, :cond_d

    .line 124
    :try_start_f1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_f6

    goto/16 :goto_d

    .line 126
    :catch_f6
    move-exception v0

    goto/16 :goto_d

    .line 119
    :catch_f9
    move-exception v0

    goto/16 :goto_58

    :catch_fc
    move-exception v1

    goto :goto_9a

    .line 126
    :catch_fe
    move-exception v1

    goto :goto_9f

    .line 119
    :catch_100
    move-exception v0

    goto :goto_b5

    :catch_102
    move-exception v0

    goto :goto_ef

    :catch_104
    move-exception v2

    goto :goto_e1

    .line 126
    :catch_106
    move-exception v1

    goto :goto_e6

    .line 115
    :catchall_108
    move-exception v0

    move-object v2, v1

    goto :goto_dc

    :catchall_10b
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_dc

    :catchall_110
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_dc

    .line 105
    :catch_115
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_c1

    :catch_11a
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_c1
.end method

.method protected abstract a(Lorg/json/JSONObject;)Z
.end method
