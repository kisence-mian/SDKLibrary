.class public Lcom/didi/virtualapk/internal/utils/PluginUtil;
.super Ljava/lang/Object;
.source "PluginUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VA.NativeLib"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyNativeLib(Ljava/io/File;Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/io/File;)V
    .registers 14
    .param p0, "apk"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p3, "nativeLibDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 210
    .local v2, "startTime":J
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 213
    .local v1, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4b

    .line 214
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v6, :cond_7a

    aget-object v0, v5, v4

    .line 215
    .local v0, "cpuArch":Ljava/lang/String;
    invoke-static {v1, p1, v0, p2, p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_a6

    move-result v7

    if-eqz v7, :cond_48

    .line 229
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 230
    const-string v4, "VA.NativeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done! +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "cpuArch":Ljava/lang/String;
    :goto_47
    return-void

    .line 214
    .restart local v0    # "cpuArch":Ljava/lang/String;
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 221
    .end local v0    # "cpuArch":Ljava/lang/String;
    :cond_4b
    :try_start_4b
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v1, p1, v4, p2, p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_a6

    move-result v4

    if-eqz v4, :cond_7a

    .line 229
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 230
    const-string v4, "VA.NativeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done! +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 226
    :cond_7a
    :try_start_7a
    const-string v4, "armeabi"

    invoke-static {v1, p1, v4, p2, p3}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_a6

    .line 229
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 230
    const-string v4, "VA.NativeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Done! +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 229
    :catchall_a6
    move-exception v4

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 230
    const-string v5, "VA.NativeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Done! +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v4
.end method

.method private static copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "buffer"    # [B
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 294
    .local v0, "bufferedInput":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 297
    .local v1, "bufferedOutput":Ljava/io/BufferedOutputStream;
    :goto_a
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    if-lez v2, :cond_15

    .line 298
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_a

    .line 300
    :cond_15
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 301
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 302
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 303
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 304
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 305
    return-void
.end method

.method private static findAndCopyNativeLib(Ljava/util/zip/ZipFile;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageInfo;Ljava/io/File;)Z
    .registers 21
    .param p0, "zipfile"    # Ljava/util/zip/ZipFile;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cpuArch"    # Ljava/lang/String;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p4, "nativeLibDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    const-string v13, "VA.NativeLib"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Try to copy plugin\'s cup arch: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v6, 0x0

    .line 237
    .local v6, "findLib":Z
    const/4 v7, 0x0

    .line 238
    .local v7, "findSo":Z
    const/4 v2, 0x0

    .line 239
    .local v2, "buffer":[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "lib/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "libPrefix":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 243
    .local v3, "e":Ljava/util/Enumeration;
    :cond_3c
    :goto_3c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 244
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 245
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "entryName":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x6c

    if-lt v13, v14, :cond_3c

    .line 250
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x6c

    if-le v13, v14, :cond_69

    .line 284
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "entryName":Ljava/lang/String;
    :cond_5e
    if-nez v6, :cond_68

    .line 285
    const-string v13, "VA.NativeLib"

    const-string v14, "Fast skip all!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v7, 0x1

    .line 289
    .end local v7    # "findSo":Z
    :cond_68
    return v7

    .line 253
    .restart local v4    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "entryName":Ljava/lang/String;
    .restart local v7    # "findSo":Z
    :cond_69
    if-nez v6, :cond_73

    const-string v13, "lib/"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 256
    :cond_73
    const/4 v6, 0x1

    .line 257
    const-string v13, ".so"

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3c

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 261
    if-nez v2, :cond_a3

    .line 262
    const/4 v7, 0x1

    .line 263
    const-string v13, "VA.NativeLib"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found plugin\'s cup arch dir: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 v13, 0x2000

    new-array v2, v13, [B

    .line 267
    :cond_a3
    const/16 v13, 0x2f

    invoke-virtual {v5, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, "libName":Ljava/lang/String;
    const-string v13, "VA.NativeLib"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "verify so "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .local v10, "libFile":Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 271
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_119

    .line 272
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/didi/virtualapk/internal/utils/Settings;->getSoVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, "VersionCode":I
    move-object/from16 v0, p3

    iget v13, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v1, v13, :cond_119

    .line 274
    const-string v13, "VA.NativeLib"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "skip existing so : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 278
    .end local v1    # "VersionCode":I
    :cond_119
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 279
    .local v8, "fos":Ljava/io/FileOutputStream;
    const-string v13, "VA.NativeLib"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "copy so "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v2, v13, v8}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 281
    move-object/from16 v0, p3

    iget v13, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, p1

    invoke-static {v0, v9, v13}, Lcom/didi/virtualapk/internal/utils/Settings;->setSoVersion(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_3c
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    if-nez p0, :cond_6

    .line 198
    const/4 v0, 0x0

    .line 203
    :goto_5
    return-object v0

    .line 200
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_11

    .line 201
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5

    .line 203
    :cond_11
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "getIBinder"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    goto :goto_5
.end method

.method public static getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v3, 0x0

    .line 78
    :goto_3
    return-object v3

    .line 61
    :cond_4
    invoke-static {p0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isIntentFromPlugin(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "pkg":Ljava/lang/String;
    const/4 v0, 0x0

    .line 64
    .local v0, "activity":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "cat":Ljava/lang/String;
    const-string v4, "va.intent.category.package."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 66
    const-string v4, "va.intent.category.package."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    goto :goto_14

    .line 70
    :cond_33
    const-string v4, "va.intent.category.activity."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 71
    const-string v4, "va.intent.category.activity."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    goto :goto_14

    .line 75
    .end local v1    # "cat":Ljava/lang/String;
    :cond_46
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 78
    .end local v0    # "activity":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_4c
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_3
.end method

.method public static getTheme(Landroid/content/Context;Landroid/content/ComponentName;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Landroid/content/ComponentName;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    .line 102
    .local v2, "loadedPlugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    if-nez v2, :cond_c

    .line 120
    :cond_b
    :goto_b
    return v3

    .line 106
    :cond_c
    invoke-virtual {v2, p1}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 107
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_b

    .line 111
    iget v4, v1, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v4, :cond_19

    .line 112
    iget v3, v1, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_b

    .line 115
    :cond_19
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 116
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_24

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    if-eqz v4, :cond_24

    .line 117
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    goto :goto_b

    .line 120
    :cond_24
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3, v4}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->selectDefaultTheme(II)I

    move-result v3

    goto :goto_b
.end method

.method public static getTheme(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    invoke-static {p1}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getComponent(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->getTheme(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public static hookActivityResources(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 152
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->isVivo(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 178
    :cond_10
    :goto_10
    return-void

    .line 159
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    .local v0, "base":Landroid/content/Context;
    invoke-static {p0}, Lcom/didi/virtualapk/PluginManager;->getInstance(Landroid/content/Context;)Lcom/didi/virtualapk/PluginManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/didi/virtualapk/PluginManager;->getLoadedPlugin(Ljava/lang/String;)Lcom/didi/virtualapk/internal/LoadedPlugin;

    move-result-object v2

    .line 161
    .local v2, "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    invoke-virtual {v2}, Lcom/didi/virtualapk/internal/LoadedPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 162
    .local v4, "resources":Landroid/content/res/Resources;
    if-eqz v4, :cond_10

    .line 163
    invoke-static {v0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    const-string v8, "mResources"

    invoke-virtual {v7, v8}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 166
    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 167
    .local v5, "theme":Landroid/content/res/Resources$Theme;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 168
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v3

    .line 169
    .local v3, "reflector":Lcom/didi/virtualapk/utils/Reflector;
    const-string v7, "mThemeResource"

    invoke-virtual {v3, v7}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/virtualapk/utils/Reflector;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 170
    .local v6, "themeResource":I
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 171
    const-string v7, "mTheme"

    invoke-virtual {v3, v7}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;

    .line 173
    const-string v7, "mResources"

    invoke-virtual {v3, v7}, Lcom/didi/virtualapk/utils/Reflector;->field(Ljava/lang/String;)Lcom/didi/virtualapk/utils/Reflector;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/didi/virtualapk/utils/Reflector;->set(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_65} :catch_66

    goto :goto_10

    .line 175
    .end local v0    # "base":Landroid/content/Context;
    .end local v2    # "plugin":Lcom/didi/virtualapk/internal/LoadedPlugin;
    .end local v3    # "reflector":Lcom/didi/virtualapk/utils/Reflector;
    .end local v4    # "resources":Landroid/content/res/Resources;
    .end local v5    # "theme":Landroid/content/res/Resources$Theme;
    .end local v6    # "themeResource":I
    :catch_66
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "VA"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public static isIntentFromPlugin(Landroid/content/Intent;)Z
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 82
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_a

    .line 92
    :cond_9
    :goto_9
    return v1

    .line 86
    :cond_a
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "cat":Ljava/lang/String;
    const-string v3, "va.intent.category."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 88
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public static final isLocalService(Landroid/content/pm/ServiceInfo;)Z
    .registers 3
    .param p0, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 181
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isVivo(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.VivoResources"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d

    .line 190
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 194
    :goto_c
    return-void

    .line 192
    :cond_d
    invoke-static {p0}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->with(Ljava/lang/Object;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    const-string v1, "putIBinder"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->method(Ljava/lang/String;[Ljava/lang/Class;)Lcom/didi/virtualapk/utils/Reflector$QuietReflector;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {v0, v1}, Lcom/didi/virtualapk/utils/Reflector$QuietReflector;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public static selectDefaultTheme(II)I
    .registers 8
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 124
    const v2, 0x1030005

    const v3, 0x103006b

    const v4, 0x1030128

    const v5, 0x103013f

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/didi/virtualapk/internal/utils/PluginUtil;->selectSystemTheme(IIIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .registers 7
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .prologue
    .line 132
    if-eqz p0, :cond_3

    .line 148
    .end local p0    # "curTheme":I
    :goto_2
    return p0

    .line 136
    .restart local p0    # "curTheme":I
    :cond_3
    const/16 v0, 0xb

    if-ge p1, v0, :cond_9

    move p0, p2

    .line 137
    goto :goto_2

    .line 140
    :cond_9
    const/16 v0, 0xe

    if-ge p1, v0, :cond_f

    move p0, p3

    .line 141
    goto :goto_2

    .line 144
    :cond_f
    const/16 v0, 0x18

    if-ge p1, v0, :cond_15

    move p0, p4

    .line 145
    goto :goto_2

    :cond_15
    move p0, p5

    .line 148
    goto :goto_2
.end method
