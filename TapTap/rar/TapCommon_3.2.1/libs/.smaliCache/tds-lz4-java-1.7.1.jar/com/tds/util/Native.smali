.class public final enum Lcom/tds/util/Native;
.super Ljava/lang/Enum;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/util/Native$OS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tds/util/Native;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tds/util/Native;

.field private static loaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/tds/util/Native;

    sput-object v1, Lcom/tds/util/Native;->$VALUES:[Lcom/tds/util/Native;

    .line 65
    sput-boolean v0, Lcom/tds/util/Native;->loaded:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method private static arch()Ljava/lang/String;
    .registers 1

    .line 39
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cleanupOldTempLibs()V
    .registers 12

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "tempFolder":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "dir":Ljava/io/File;
    new-instance v2, Lcom/tds/util/Native$1;

    invoke-direct {v2}, Lcom/tds/util/Native$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 81
    .local v2, "tempLibFiles":[Ljava/io/File;
    if-eqz v2, :cond_6c

    .line 82
    move-object v3, v2

    .local v3, "arr$":[Ljava/io/File;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_22
    if-ge v5, v4, :cond_6c

    aget-object v6, v3, v5

    .line 83
    .local v6, "tempLibFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".lck"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v7, "lckFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_69

    .line 86
    :try_start_48
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 90
    goto :goto_69

    .line 88
    :catch_4c
    move-exception v8

    .line 89
    .local v8, "e":Ljava/lang/SecurityException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to delete old temp lib"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    .end local v6    # "tempLibFile":Ljava/io/File;
    .end local v7    # "lckFile":Ljava/io/File;
    .end local v8    # "e":Ljava/lang/SecurityException;
    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 94
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_6c
    return-void
.end method

.method public static declared-synchronized isLoaded()Z
    .registers 2

    const-class v0, Lcom/tds/util/Native;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-boolean v1, Lcom/tds/util/Native;->loaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 68
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized load()V
    .registers 10

    const-class v0, Lcom/tds/util/Native;

    monitor-enter v0

    .line 97
    :try_start_3
    sget-boolean v1, Lcom/tds/util/Native;->loaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_128

    if-eqz v1, :cond_9

    .line 98
    monitor-exit v0

    return-void

    .line 101
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/tds/util/Native;->cleanupOldTempLibs()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_128

    .line 105
    const/4 v1, 0x1

    :try_start_d
    const-string v2, "lz4-java"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 106
    sput-boolean v1, Lcom/tds/util/Native;->loaded:Z
    :try_end_14
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_14} :catch_16
    .catchall {:try_start_d .. :try_end_14} :catchall_128

    .line 107
    monitor-exit v0

    return-void

    .line 108
    :catch_16
    move-exception v2

    .line 112
    :try_start_17
    invoke-static {}, Lcom/tds/util/Native;->resourceName()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "resourceName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_128

    .line 114
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_109

    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, "tempLib":Ljava/io/File;
    const/4 v5, 0x0

    .line 122
    .local v5, "tempLibLock":Ljava/io/File;
    :try_start_23
    const-string v6, "liblz4-java-"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/tds/util/Native;->os()Lcom/tds/util/Native$OS;

    move-result-object v8

    iget-object v8, v8, Lcom/tds/util/Native$OS;->libExtension:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lck"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    move-object v5, v6

    .line 123
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".lck$"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 125
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_60} :catch_95
    .catchall {:try_start_23 .. :try_end_60} :catchall_93

    .line 126
    .local v6, "out":Ljava/io/FileOutputStream;
    const/16 v7, 0x1000

    :try_start_62
    new-array v7, v7, [B

    .line 128
    .local v7, "buf":[B
    :goto_64
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_87

    .line 129
    .local v8, "read":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_82

    .line 130
    nop

    .line 134
    .end local v7    # "buf":[B
    .end local v8    # "read":I
    :try_start_6c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 135
    .end local v6    # "out":Ljava/io/FileOutputStream;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 136
    sput-boolean v1, Lcom/tds/util/Native;->loaded:Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_78} :catch_95
    .catchall {:try_start_6c .. :try_end_78} :catchall_93

    .line 140
    nop

    .line 152
    :try_start_79
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V
    :try_end_7f
    .catchall {:try_start_79 .. :try_end_7f} :catchall_128

    .line 155
    nop

    .line 156
    monitor-exit v0

    return-void

    .line 132
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "buf":[B
    .restart local v8    # "read":I
    :cond_82
    const/4 v9, 0x0

    :try_start_83
    invoke-virtual {v6, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    .line 133
    .end local v8    # "read":I
    goto :goto_64

    .line 125
    .end local v7    # "buf":[B
    :catchall_87
    move-exception v1

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "tempLib":Ljava/io/File;
    .end local v5    # "tempLibLock":Ljava/io/File;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :try_start_88
    throw v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_89

    .line 134
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "tempLib":Ljava/io/File;
    .restart local v5    # "tempLibLock":Ljava/io/File;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_89
    move-exception v7

    :try_start_8a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    :try_start_8f
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "tempLib":Ljava/io/File;
    .end local v5    # "tempLibLock":Ljava/io/File;
    .end local v8    # "x2":Ljava/lang/Throwable;
    :goto_92
    throw v7
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_95
    .catchall {:try_start_8f .. :try_end_93} :catchall_93

    .line 140
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "tempLib":Ljava/io/File;
    .restart local v5    # "tempLibLock":Ljava/io/File;
    :catchall_93
    move-exception v1

    goto :goto_af

    .line 137
    :catch_95
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    :try_start_96
    new-instance v6, Ljava/lang/ExceptionInInitializerError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot unpack liblz4-java: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "tempLib":Ljava/io/File;
    .end local v5    # "tempLibLock":Ljava/io/File;
    throw v6
    :try_end_af
    .catchall {:try_start_96 .. :try_end_af} :catchall_93

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "resourceName":Ljava/lang/String;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "tempLib":Ljava/io/File;
    .restart local v5    # "tempLibLock":Ljava/io/File;
    :goto_af
    :try_start_af
    sget-boolean v6, Lcom/tds/util/Native;->loaded:Z

    if-nez v6, :cond_102

    .line 141
    if-eqz v4, :cond_db

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_db

    .line 142
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_c2

    goto :goto_db

    .line 143
    :cond_c2
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot unpack liblz4-java / cannot delete a temporary native library "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_db
    :goto_db
    if-eqz v5, :cond_108

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_108

    .line 147
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_108

    .line 148
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot unpack liblz4-java / cannot delete a temporary lock file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_102
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    :cond_108
    throw v1

    .line 115
    .end local v4    # "tempLib":Ljava/io/File;
    .end local v5    # "tempLibLock":Ljava/io/File;
    :cond_109
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported OS/arch, cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Please try building from source."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_128
    .catchall {:try_start_af .. :try_end_128} :catchall_128

    .line 96
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_128
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static os()Lcom/tds/util/Native$OS;
    .registers 4

    .line 43
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "osName":Ljava/lang/String;
    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 45
    sget-object v1, Lcom/tds/util/Native$OS;->LINUX:Lcom/tds/util/Native$OS;

    return-object v1

    .line 46
    :cond_11
    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 47
    sget-object v1, Lcom/tds/util/Native$OS;->MAC:Lcom/tds/util/Native$OS;

    return-object v1

    .line 48
    :cond_1c
    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 49
    sget-object v1, Lcom/tds/util/Native$OS;->WINDOWS:Lcom/tds/util/Native$OS;

    return-object v1

    .line 50
    :cond_27
    const-string v1, "Solaris"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_51

    .line 53
    :cond_38
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported operating system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_51
    :goto_51
    sget-object v1, Lcom/tds/util/Native$OS;->SOLARIS:Lcom/tds/util/Native$OS;

    return-object v1
.end method

.method private static resourceName()Ljava/lang/String;
    .registers 5

    .line 59
    invoke-static {}, Lcom/tds/util/Native;->os()Lcom/tds/util/Native$OS;

    move-result-object v0

    .line 60
    .local v0, "os":Lcom/tds/util/Native$OS;
    const-class v1, Lcom/tds/util/Native;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "packagePrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/tds/util/Native$OS;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tds/util/Native;->arch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/liblz4-java."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tds/util/Native$OS;->libExtension:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tds/util/Native;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/tds/util/Native;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tds/util/Native;

    return-object v0
.end method

.method public static values()[Lcom/tds/util/Native;
    .registers 1

    .line 24
    sget-object v0, Lcom/tds/util/Native;->$VALUES:[Lcom/tds/util/Native;

    invoke-virtual {v0}, [Lcom/tds/util/Native;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tds/util/Native;

    return-object v0
.end method
