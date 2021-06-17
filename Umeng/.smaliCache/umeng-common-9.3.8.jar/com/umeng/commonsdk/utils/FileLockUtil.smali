.class public Lcom/umeng/commonsdk/utils/FileLockUtil;
.super Ljava/lang/Object;
.source "FileLockUtil.java"


# instance fields
.field private final lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/utils/FileLockUtil;->lockObject:Ljava/lang/Object;

    return-void
.end method

.method private static getFileLock(Ljava/lang/String;)Ljava/nio/channels/FileLock;
    .registers 4

    .line 139
    nop

    .line 140
    nop

    .line 142
    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_e} :catch_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_17

    .line 144
    :try_start_e
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_13

    .line 145
    return-object p0

    .line 148
    :catch_13
    move-exception v1

    goto :goto_19

    .line 146
    :catch_15
    move-exception v1

    goto :goto_1f

    .line 148
    :catch_17
    move-exception v1

    move-object p0, v0

    .line 149
    :goto_19
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 146
    :catch_1d
    move-exception v1

    move-object p0, v0

    .line 147
    :goto_1f
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 150
    nop

    .line 152
    :goto_23
    if-eqz p0, :cond_2d

    .line 154
    :try_start_25
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    .line 157
    goto :goto_2d

    .line 155
    :catch_29
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 160
    :cond_2d
    :goto_2d
    return-object v0
.end method


# virtual methods
.method public doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;)V
    .registers 5

    .line 80
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 81
    return-void

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/FileLockUtil;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->getFileLock(Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_50

    .line 85
    if-eqz v1, :cond_4e

    .line 87
    :try_start_14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/umeng/commonsdk/utils/FileLockCallback;->onFileLock(Ljava/lang/String;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_2a
    .catchall {:try_start_14 .. :try_end_1b} :catchall_28

    .line 92
    :try_start_1b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 93
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_26
    .catchall {:try_start_1b .. :try_end_25} :catchall_50

    goto :goto_38

    .line 94
    :catch_26
    move-exception p1

    goto :goto_3a

    .line 91
    :catchall_28
    move-exception p1

    goto :goto_3e

    .line 88
    :catch_2a
    move-exception p1

    .line 89
    :try_start_2b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    .line 92
    :try_start_2e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 93
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_39
    .catchall {:try_start_2e .. :try_end_38} :catchall_50

    .line 96
    :goto_38
    goto :goto_4e

    .line 94
    :catch_39
    move-exception p1

    .line 95
    :goto_3a
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_50

    .line 97
    goto :goto_4e

    .line 92
    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 93
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_49
    .catchall {:try_start_3e .. :try_end_48} :catchall_50

    .line 96
    goto :goto_4d

    .line 94
    :catch_49
    move-exception p2

    .line 95
    :try_start_4a
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_4d
    throw p1

    .line 99
    :cond_4e
    :goto_4e
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_50

    throw p1
.end method

.method public doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V
    .registers 6

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 51
    return-void

    .line 53
    :cond_7
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/FileLockUtil;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->getFileLock(Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_4c

    .line 55
    if-eqz v1, :cond_4a

    .line 57
    :try_start_14
    invoke-interface {p2, p1, p3}, Lcom/umeng/commonsdk/utils/FileLockCallback;->onFileLock(Ljava/io/File;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_29
    .catchall {:try_start_14 .. :try_end_17} :catchall_27

    .line 62
    :try_start_17
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 63
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_22

    .line 67
    :goto_21
    goto :goto_4a

    .line 64
    :catchall_22
    move-exception p1

    .line 66
    :goto_23
    :try_start_23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_4c

    .line 68
    goto :goto_4a

    .line 61
    :catchall_27
    move-exception p1

    goto :goto_3a

    .line 58
    :catch_29
    move-exception p1

    .line 59
    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 62
    :try_start_2d
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 63
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_38

    goto :goto_21

    .line 64
    :catchall_38
    move-exception p1

    goto :goto_23

    .line 62
    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 63
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_45

    .line 67
    goto :goto_49

    .line 64
    :catchall_45
    move-exception p2

    .line 66
    :try_start_46
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :goto_49
    throw p1

    .line 70
    :cond_4a
    :goto_4a
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4c

    goto :goto_50

    :goto_4f
    throw p1

    :goto_50
    goto :goto_4f
.end method

.method public doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;Ljava/lang/Object;)V
    .registers 6

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    .line 28
    return-void

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/umeng/commonsdk/utils/FileLockUtil;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->getFileLock(Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_50

    .line 32
    if-eqz v1, :cond_4e

    .line 34
    :try_start_14
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/umeng/commonsdk/utils/FileLockCallback;->onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_2a
    .catchall {:try_start_14 .. :try_end_1b} :catchall_28

    .line 39
    :try_start_1b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 40
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_26
    .catchall {:try_start_1b .. :try_end_25} :catchall_50

    goto :goto_38

    .line 41
    :catch_26
    move-exception p1

    goto :goto_3a

    .line 38
    :catchall_28
    move-exception p1

    goto :goto_3e

    .line 35
    :catch_2a
    move-exception p1

    .line 36
    :try_start_2b
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_28

    .line 39
    :try_start_2e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 40
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_39
    .catchall {:try_start_2e .. :try_end_38} :catchall_50

    .line 43
    :goto_38
    goto :goto_4e

    .line 41
    :catch_39
    move-exception p1

    .line 42
    :goto_3a
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_50

    .line 44
    goto :goto_4e

    .line 39
    :goto_3e
    :try_start_3e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 40
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_49
    .catchall {:try_start_3e .. :try_end_48} :catchall_50

    .line 43
    goto :goto_4d

    .line 41
    :catch_49
    move-exception p2

    .line 42
    :try_start_4a
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    :goto_4d
    throw p1

    .line 46
    :cond_4e
    :goto_4e
    monitor-exit v0

    .line 47
    return-void

    .line 46
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_50

    throw p1
.end method

.method public doFileOperateion(Ljava/lang/String;Lcom/umeng/commonsdk/utils/FileLockCallback;)V
    .registers 5

    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 111
    return-void

    .line 113
    :cond_c
    iget-object v1, p0, Lcom/umeng/commonsdk/utils/FileLockUtil;->lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_f
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/FileLockUtil;->getFileLock(Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_51

    .line 115
    if-eqz p1, :cond_4f

    .line 117
    :try_start_15
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/umeng/commonsdk/utils/FileLockCallback;->onFileLock(Ljava/lang/String;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_2b
    .catchall {:try_start_15 .. :try_end_1c} :catchall_29

    .line 122
    :try_start_1c
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 123
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_51

    goto :goto_39

    .line 124
    :catch_27
    move-exception p1

    goto :goto_3b

    .line 121
    :catchall_29
    move-exception p2

    goto :goto_3f

    .line 118
    :catch_2b
    move-exception p2

    .line 119
    :try_start_2c
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_29

    .line 122
    :try_start_2f
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 123
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_39} :catch_3a
    .catchall {:try_start_2f .. :try_end_39} :catchall_51

    .line 126
    :goto_39
    goto :goto_4f

    .line 124
    :catch_3a
    move-exception p1

    .line 125
    :goto_3b
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_51

    .line 127
    goto :goto_4f

    .line 122
    :goto_3f
    :try_start_3f
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V

    .line 123
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_49} :catch_4a
    .catchall {:try_start_3f .. :try_end_49} :catchall_51

    .line 126
    goto :goto_4e

    .line 124
    :catch_4a
    move-exception p1

    .line 125
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    :goto_4e
    throw p2

    .line 129
    :cond_4f
    :goto_4f
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_51
    move-exception p1

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_51

    throw p1
.end method
