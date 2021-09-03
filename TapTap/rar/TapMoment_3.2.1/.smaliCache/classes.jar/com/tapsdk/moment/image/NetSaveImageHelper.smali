.class public Lcom/tapsdk/moment/image/NetSaveImageHelper;
.super Ljava/lang/Object;
.source "NetSaveImageHelper.java"


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0x1770

.field private static final MEDIA_DIR:Ljava/lang/String; = "Moment_Media"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/tapsdk/moment/image/SaveImageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tapsdk/moment/NetworkException;
        }
    .end annotation

    .line 23
    invoke-static {p0, p1}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->saveImageToFile(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V

    return-void
.end method

.method private static constructorMediaFileDir()Ljava/io/File;
    .registers 3

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Moment_Media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 97
    :cond_14
    return-object v0
.end method

.method private static createDownloadImageUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4
    .param p0, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tapsdk/moment/NetworkException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 45
    .local v1, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v2, 0x1770

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 48
    return-object v1
.end method

.method public static download(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
    .registers 3
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/tapsdk/moment/image/SaveImageCallback;

    .line 30
    new-instance v0, Lcom/tapsdk/moment/image/NetSaveImageHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/tapsdk/moment/image/NetSaveImageHelper$1;-><init>(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V

    invoke-static {v0}, Lcom/tapsdk/moment/Async;->runOnPool(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method private static notifyResult(Lcom/tapsdk/moment/image/SaveImageCallback;ZLjava/io/File;)V
    .registers 4
    .param p0, "callback"    # Lcom/tapsdk/moment/image/SaveImageCallback;
    .param p1, "success"    # Z
    .param p2, "file"    # Ljava/io/File;

    .line 84
    new-instance v0, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapsdk/moment/image/NetSaveImageHelper$2;-><init>(Lcom/tapsdk/moment/image/SaveImageCallback;ZLjava/io/File;)V

    invoke-static {v0}, Lcom/tapsdk/moment/Async;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method private static renameFile(Ljava/io/File;Ljava/io/FileInputStream;)Ljava/io/File;
    .registers 7
    .param p0, "tempFile"    # Ljava/io/File;
    .param p1, "fileInputStream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 102
    .local v0, "suffixByte":[B
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 103
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 104
    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 105
    invoke-static {v0}, Lcom/tapsdk/moment/image/ImageSuffix;->readType([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 107
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 108
    return-object v1
.end method

.method private static saveImageToFile(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
    .registers 4
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/tapsdk/moment/image/SaveImageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tapsdk/moment/NetworkException;
        }
    .end annotation

    .line 52
    invoke-static {p0}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->createDownloadImageUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 53
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 54
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-static {v1, p0, p1}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->writeToFile(Ljava/io/InputStream;Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V

    .line 55
    return-void
.end method

.method private static writeToFile(Ljava/io/InputStream;Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V
    .registers 12
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/tapsdk/moment/image/SaveImageCallback;

    .line 58
    invoke-static {}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->constructorMediaFileDir()Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "dir":Ljava/io/File;
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 61
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 62
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 64
    .local v3, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    :try_start_b
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Lcom/tapsdk/moment/Utils;->encodeToBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .local v5, "tempFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v6

    .line 66
    :goto_1a
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "index":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_29

    .line 67
    invoke-virtual {v2, v1, v4, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 68
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_1a

    .line 70
    :cond_29
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v6

    .line 71
    invoke-static {v5, v3}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->renameFile(Ljava/io/File;Ljava/io/FileInputStream;)Ljava/io/File;

    move-result-object v6

    .line 72
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-static {p2, v8, v6}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->notifyResult(Lcom/tapsdk/moment/image/SaveImageCallback;ZLjava/io/File;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3a} :catch_46
    .catchall {:try_start_b .. :try_end_3a} :catchall_44

    .line 77
    .end local v5    # "tempFile":Ljava/io/File;
    .end local v6    # "file":Ljava/io/File;
    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {v3}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    invoke-static {p0}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    goto :goto_58

    .line 77
    .end local v7    # "index":I
    :catchall_44
    move-exception v4

    goto :goto_59

    .line 73
    :catch_46
    move-exception v5

    .line 74
    .local v5, "e":Ljava/lang/Exception;
    :try_start_47
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 v6, 0x0

    invoke-static {p2, v4, v6}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->notifyResult(Lcom/tapsdk/moment/image/SaveImageCallback;ZLjava/io/File;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_44

    .line 77
    .end local v5    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {v3}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    invoke-static {p0}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    nop

    .line 81
    :goto_58
    return-void

    .line 77
    :goto_59
    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 78
    invoke-static {v3}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    invoke-static {p0}, Lcom/tapsdk/moment/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 80
    throw v4
.end method
