.class public Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 170
    if-eqz p0, :cond_5

    .line 172
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 176
    :cond_5
    :goto_5
    return-void

    .line 173
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 120
    .local v0, "tmpFile":Ljava/io/File;
    if-nez v0, :cond_8

    .line 129
    :goto_7
    return-object v1

    .line 124
    :cond_8
    :try_start_8
    invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1a

    move-result v2

    if-nez v2, :cond_12

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_7

    .line 127
    :cond_12
    :try_start_12
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_7

    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 163
    invoke-static {p0, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    move-result v1

    .line 165
    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_d
    move-exception v1

    invoke-static {v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 12
    .param p0, "file"    # Ljava/io/File;
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    .line 137
    const/4 v3, 0x0

    .line 138
    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 140
    .local v2, "old":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_6
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v4, p0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_55
    .catchall {:try_start_6 .. :try_end_c} :catchall_4a

    .line 141
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v4, "os":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_e
    new-array v0, v7, [B

    .line 143
    .local v0, "buffer":[B
    :goto_10
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "readLen":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_41

    .line 144
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1b} :catch_1c
    .catchall {:try_start_e .. :try_end_1b} :catchall_52

    goto :goto_10

    .line 147
    .end local v0    # "buffer":[B
    .end local v5    # "readLen":I
    :catch_1c
    move-exception v1

    move-object v3, v4

    .line 148
    .end local v4    # "os":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :goto_1e
    :try_start_1e
    const-string v7, "TypefaceCompatUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error copying resource contents to temp file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_4a

    .line 151
    invoke-static {v3}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local v1    # "e":Ljava/io/IOException;
    :goto_40
    return v6

    .line 146
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "readLen":I
    :cond_41
    const/4 v6, 0x1

    .line 151
    invoke-static {v4}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_40

    .line 151
    .end local v0    # "buffer":[B
    .end local v5    # "readLen":I
    :catchall_4a
    move-exception v6

    :goto_4b
    invoke-static {v3}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 152
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6

    .line 151
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "os":Ljava/io/FileOutputStream;
    :catchall_52
    move-exception v6

    move-object v3, v4

    .end local v4    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    goto :goto_4b

    .line 147
    :catch_55
    move-exception v1

    goto :goto_1e
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".font"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "prefix":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    const/16 v3, 0x64

    if-ge v1, v3, :cond_55

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v0, "file":Ljava/io/File;
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_51

    move-result v3

    if-eqz v3, :cond_52

    .line 74
    .end local v0    # "file":Ljava/io/File;
    :goto_50
    return-object v0

    .line 70
    .restart local v0    # "file":Ljava/io/File;
    :catch_51
    move-exception v3

    .line 64
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 74
    .end local v0    # "file":Ljava/io/File;
    :cond_55
    const/4 v0, 0x0

    goto :goto_50
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 99
    .local v9, "resolver":Landroid/content/ContentResolver;
    :try_start_4
    const-string v1, "r"

    invoke-virtual {v9, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_1b

    move-result-object v8

    .local v8, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v11, 0x0

    .line 100
    if-nez v8, :cond_22

    .line 101
    const/4 v1, 0x0

    .line 108
    if-eqz v8, :cond_15

    if-eqz v11, :cond_1e

    :try_start_12
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_1b

    .line 109
    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_15
    :goto_15
    return-object v1

    .line 108
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_16
    move-exception v2

    :try_start_17
    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_15

    .end local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_1b
    move-exception v6

    .line 109
    .local v6, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_15

    .line 108
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v8    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1e
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_1b

    goto :goto_15

    .line 103
    :cond_22
    :try_start_22
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2b} :catch_55
    .catchall {:try_start_22 .. :try_end_2b} :catchall_67

    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 104
    :try_start_2c
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 105
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 106
    .local v4, "size":J
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3b} :catch_6e
    .catchall {:try_start_2c .. :try_end_3b} :catchall_8e

    move-result-object v1

    .line 107
    if-eqz v7, :cond_43

    if-eqz v10, :cond_63

    :try_start_40
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_50
    .catchall {:try_start_40 .. :try_end_43} :catchall_67

    .line 108
    :cond_43
    :goto_43
    if-eqz v8, :cond_15

    if-eqz v11, :cond_6a

    :try_start_47
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_1b

    goto :goto_15

    :catch_4b
    move-exception v2

    :try_start_4c
    invoke-virtual {v11, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_1b

    goto :goto_15

    .line 107
    :catch_50
    move-exception v2

    :try_start_51
    invoke-virtual {v10, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_67

    goto :goto_43

    .line 99
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_55
    move-exception v1

    :try_start_56
    throw v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 108
    :catchall_57
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_5b
    if-eqz v8, :cond_62

    if-eqz v2, :cond_8a

    :try_start_5f
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_85
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_1b

    :cond_62
    :goto_62
    :try_start_62
    throw v1
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_63} :catch_1b

    .line 107
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_63
    :try_start_63
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_55
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_43

    .line 108
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_67
    move-exception v1

    move-object v2, v11

    goto :goto_5b

    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_6a
    :try_start_6a
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_1b

    goto :goto_15

    .line 103
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    :catch_6e
    move-exception v1

    :try_start_6f
    throw v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 107
    :catchall_70
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_74
    if-eqz v7, :cond_7b

    if-eqz v2, :cond_81

    :try_start_78
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_67

    :cond_7b
    :goto_7b
    :try_start_7b
    throw v1

    :catch_7c
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7b

    :cond_81
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_84} :catch_55
    .catchall {:try_start_7b .. :try_end_84} :catchall_67

    goto :goto_7b

    .line 108
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_85
    move-exception v3

    :try_start_86
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_62

    :cond_8a
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8d} :catch_1b

    goto :goto_62

    .line 107
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_8e
    move-exception v1

    move-object v2, v10

    goto :goto_74
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 12
    .param p0, "file"    # Ljava/io/File;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 83
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_24

    .local v7, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 84
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 85
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 86
    .local v4, "size":J
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_2b
    .catchall {:try_start_7 .. :try_end_16} :catchall_42

    move-result-object v1

    .line 87
    if-eqz v7, :cond_1e

    if-eqz v8, :cond_27

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_24

    .line 88
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :cond_1e
    :goto_1e
    return-object v1

    .line 87
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v9, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :catch_24
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    move-object v1, v8

    .line 88
    goto :goto_1e

    .line 87
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v4    # "size":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_27
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_24

    goto :goto_1e

    .line 83
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "size":J
    :catch_2b
    move-exception v1

    :try_start_2c
    throw v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 87
    :catchall_2d
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_31
    if-eqz v7, :cond_38

    if-eqz v2, :cond_3e

    :try_start_35
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_24

    :cond_38
    :goto_38
    :try_start_38
    throw v1

    :catch_39
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_3e
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_41} :catch_24

    goto :goto_38

    :catchall_42
    move-exception v1

    move-object v2, v8

    goto :goto_31
.end method
