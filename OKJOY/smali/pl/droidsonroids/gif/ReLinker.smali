.class Lpl/droidsonroids/gif/ReLinker;
.super Ljava/lang/Object;
.source "ReLinker.java"


# static fields
.field private static final COPY_BUFFER_SIZE:I = 0x2000

.field private static final LIB_DIR:Ljava/lang/String; = "lib"

.field private static final MAPPED_BASE_LIB_NAME:Ljava/lang/String;

.field private static final MAX_TRIES:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "pl_droidsonroids_gif"

    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpl/droidsonroids/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lpl/droidsonroids/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private static clearOldLibraryFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .registers 6
    .param p0, "outputFile"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 179
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 180
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_16

    .line 181
    array-length v3, v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v3, :cond_16

    aget-object v0, v1, v2

    .line 182
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 185
    .end local v0    # "file":Ljava/io/File;
    :cond_16
    return-void
.end method

.method private static closeSilently(Ljava/io/Closeable;)V
    .registers 2
    .param p0, "closeable"    # Ljava/io/Closeable;

    .prologue
    .line 221
    if-eqz p0, :cond_5

    .line 222
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 227
    :cond_5
    :goto_5
    return-void

    .line 224
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 206
    .local v0, "buf":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 207
    .local v1, "bytesRead":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    .line 212
    return-void

    .line 210
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method private static findLibraryEntry(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    .registers 6
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;

    .prologue
    .line 137
    invoke-static {}, Lpl/droidsonroids/gif/ReLinker;->getSupportedABIs()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_14

    aget-object v0, v3, v2

    .line 138
    .local v0, "abi":Ljava/lang/String;
    invoke-static {p0, v0}, Lpl/droidsonroids/gif/ReLinker;->getEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 139
    .local v1, "libraryEntry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_11

    .line 143
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :goto_10
    return-object v1

    .line 137
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 143
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_14
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static getEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 4
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "abi"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lpl/droidsonroids/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method private static getSupportedABIs()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 149
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 151
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_8
.end method

.method static loadLibrary(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeDynamicallyLoadedCode"
        }
    .end annotation

    .prologue
    .line 57
    const-class v2, Lpl/droidsonroids/gif/ReLinker;

    monitor-enter v2

    .line 58
    :try_start_3
    invoke-static {p0}, Lpl/droidsonroids/gif/ReLinker;->unpackLibrary(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 59
    .local v0, "workaroundFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 60
    monitor-exit v2

    .line 61
    return-void

    .line 60
    .end local v0    # "workaroundFile":Ljava/io/File;
    :catchall_10
    move-exception v1

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;
    .registers 8
    .param p0, "apkFile"    # Ljava/io/File;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "tries":I
    const/4 v2, 0x0

    .local v2, "zipFile":Ljava/util/zip/ZipFile;
    move v1, v0

    .line 162
    .end local v0    # "tries":I
    .local v1, "tries":I
    :goto_3
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "tries":I
    .restart local v0    # "tries":I
    const/4 v4, 0x5

    if-ge v1, v4, :cond_f

    .line 164
    :try_start_8
    new-instance v3, Ljava/util/zip/ZipFile;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_2e

    .end local v2    # "zipFile":Ljava/util/zip/ZipFile;
    .local v3, "zipFile":Ljava/util/zip/ZipFile;
    move-object v2, v3

    .line 171
    .end local v3    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_f
    if-nez v2, :cond_31

    .line 172
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open APK file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    :catch_2e
    move-exception v4

    move v1, v0

    .line 168
    .end local v0    # "tries":I
    .restart local v1    # "tries":I
    goto :goto_3

    .line 174
    .end local v1    # "tries":I
    .restart local v0    # "tries":I
    :cond_31
    return-object v2
.end method

.method private static setFilePermissions(Ljava/io/File;)V
    .registers 3
    .param p0, "outputFile"    # Ljava/io/File;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 192
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 193
    invoke-virtual {p0, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 194
    return-void
.end method

.method private static unpackLibrary(Landroid/content/Context;)Ljava/io/File;
    .registers 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lpl/droidsonroids/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "1.2.15"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, "outputFileName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    const-string v18, "lib"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .local v13, "outputFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v18

    if-eqz v18, :cond_32

    move-object v5, v13

    .line 133
    :cond_31
    :goto_31
    return-object v5

    .line 76
    :cond_32
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v5, "cachedLibraryFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v18

    if-nez v18, :cond_31

    .line 81
    const-string v18, "pl_droidsonroids_gif_surface"

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 82
    .local v12, "mappedSurfaceLibraryName":Ljava/lang/String;
    new-instance v9, Lpl/droidsonroids/gif/ReLinker$1;

    invoke-direct {v9, v12}, Lpl/droidsonroids/gif/ReLinker$1;-><init>(Ljava/lang/String;)V

    .line 88
    .local v9, "filter":Ljava/io/FilenameFilter;
    invoke-static {v13, v9}, Lpl/droidsonroids/gif/ReLinker;->clearOldLibraryFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 89
    invoke-static {v5, v9}, Lpl/droidsonroids/gif/ReLinker;->clearOldLibraryFiles(Ljava/io/File;Ljava/io/FilenameFilter;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 92
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Ljava/io/File;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "apkFile":Ljava/io/File;
    const/16 v17, 0x0

    .line 95
    .local v17, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_65
    invoke-static {v3}, Lpl/droidsonroids/gif/ReLinker;->openZipFile(Ljava/io/File;)Ljava/util/zip/ZipFile;

    move-result-object v17

    .line 97
    const/4 v15, 0x0

    .local v15, "tries":I
    move/from16 v16, v15

    .line 98
    .end local v15    # "tries":I
    .local v16, "tries":I
    :goto_6c
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "tries":I
    .restart local v15    # "tries":I
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_bd

    .line 99
    invoke-static/range {v17 .. v17}, Lpl/droidsonroids/gif/ReLinker;->findLibraryEntry(Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 100
    .local v11, "libraryEntry":Ljava/util/zip/ZipEntry;
    if-nez v11, :cond_a4

    .line 101
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Library "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lpl/droidsonroids/gif/ReLinker;->MAPPED_BASE_LIB_NAME:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " for supported ABIs not found in APK file"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_9d
    .catchall {:try_start_65 .. :try_end_9d} :catchall_9d

    .line 126
    .end local v11    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .end local v15    # "tries":I
    :catchall_9d
    move-exception v18

    .line 127
    if-eqz v17, :cond_a3

    .line 128
    :try_start_a0
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_e0

    .line 132
    :cond_a3
    :goto_a3
    throw v18

    .line 104
    .restart local v11    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v15    # "tries":I
    :cond_a4
    const/4 v10, 0x0

    .line 105
    .local v10, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 107
    .local v7, "fileOut":Ljava/io/FileOutputStream;
    :try_start_a6
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    .line 108
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_b1} :catch_c5
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_d6

    .line 109
    .end local v7    # "fileOut":Ljava/io/FileOutputStream;
    .local v8, "fileOut":Ljava/io/FileOutputStream;
    :try_start_b1
    invoke-static {v10, v8}, Lpl/droidsonroids/gif/ReLinker;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_e5
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_e2

    .line 116
    :try_start_b4
    invoke-static {v10}, Lpl/droidsonroids/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v8}, Lpl/droidsonroids/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 119
    invoke-static {v13}, Lpl/droidsonroids/gif/ReLinker;->setFilePermissions(Ljava/io/File;)V
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_9d

    .line 127
    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :cond_bd
    if-eqz v17, :cond_c2

    .line 128
    :try_start_bf
    invoke-virtual/range {v17 .. v17}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_de

    :cond_c2
    :goto_c2
    move-object v5, v13

    .line 133
    goto/16 :goto_31

    .line 110
    .restart local v7    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :catch_c5
    move-exception v6

    .line 111
    .local v6, "e":Ljava/io/IOException;
    :goto_c6
    const/16 v18, 0x2

    move/from16 v0, v18

    if-le v15, v0, :cond_cd

    .line 112
    move-object v13, v5

    .line 116
    :cond_cd
    :try_start_cd
    invoke-static {v10}, Lpl/droidsonroids/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v7}, Lpl/droidsonroids/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    move/from16 v16, v15

    .end local v15    # "tries":I
    .restart local v16    # "tries":I
    goto :goto_6c

    .line 116
    .end local v6    # "e":Ljava/io/IOException;
    .end local v16    # "tries":I
    .restart local v15    # "tries":I
    :catchall_d6
    move-exception v18

    :goto_d7
    invoke-static {v10}, Lpl/droidsonroids/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 117
    invoke-static {v7}, Lpl/droidsonroids/gif/ReLinker;->closeSilently(Ljava/io/Closeable;)V

    .line 118
    throw v18
    :try_end_de
    .catchall {:try_start_cd .. :try_end_de} :catchall_9d

    .line 130
    .end local v7    # "fileOut":Ljava/io/FileOutputStream;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v11    # "libraryEntry":Ljava/util/zip/ZipEntry;
    :catch_de
    move-exception v18

    goto :goto_c2

    .end local v15    # "tries":I
    :catch_e0
    move-exception v19

    goto :goto_a3

    .line 116
    .restart local v8    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "libraryEntry":Ljava/util/zip/ZipEntry;
    .restart local v15    # "tries":I
    :catchall_e2
    move-exception v18

    move-object v7, v8

    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_d7

    .line 110
    .end local v7    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v8    # "fileOut":Ljava/io/FileOutputStream;
    :catch_e5
    move-exception v6

    move-object v7, v8

    .end local v8    # "fileOut":Ljava/io/FileOutputStream;
    .restart local v7    # "fileOut":Ljava/io/FileOutputStream;
    goto :goto_c6
.end method
