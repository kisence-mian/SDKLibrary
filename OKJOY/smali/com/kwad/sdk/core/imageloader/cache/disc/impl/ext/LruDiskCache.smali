.class public Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x8000

.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field public static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static final ERROR_ARG_NEGATIVE:Ljava/lang/String; = " argument must be positive number"

.field private static final ERROR_ARG_NULL:Ljava/lang/String; = " argument must be not null"


# instance fields
.field protected bufferSize:I

.field protected cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

.field protected compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field protected compressQuality:I

.field protected final fileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

.field private reserveCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;J)V
    .registers 12

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;JI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;JI)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    sget-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressQuality:I

    if-eqz p1, :cond_4b

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_43

    if-ltz p6, :cond_3b

    if-eqz p3, :cond_33

    if-nez v0, :cond_55

    const-wide v4, 0x7fffffffffffffffL

    :goto_23
    if-nez p6, :cond_53

    const v6, 0x7fffffff

    :goto_28
    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->reserveCacheDir:Ljava/io/File;

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->fileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileNameGenerator argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxFileCount argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheMaxSize argument must be positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDir argument must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    move v6, p6

    goto :goto_28

    :cond_55
    move-wide v4, p4

    goto :goto_23
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->fileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initCache(Ljava/io/File;Ljava/io/File;JI)V
    .registers 13

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p1

    move-wide v4, p3

    move v6, p5

    :try_start_5
    invoke-static/range {v1 .. v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->open(Ljava/io/File;IIJI)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_c

    :cond_b
    return-void

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1a

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    :cond_1a
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    if-nez v1, :cond_b

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->delete()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1e

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->reserveCacheDir:Ljava/io/File;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->getMaxSize()J

    move-result-wide v4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->getMaxFileCount()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1d} :catch_23

    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_23
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    return-void

    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_19
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    move-result-object v1

    if-nez v1, :cond_13

    :goto_d
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->getFile(I)Ljava/io/File;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_2f
    .catchall {:try_start_14 .. :try_end_17} :catchall_31

    move-result-object v0

    goto :goto_d

    :catch_19
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1c
    :try_start_1c
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_31

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    goto :goto_12

    :catchall_25
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_29
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    :cond_2e
    throw v0

    :catch_2f
    move-exception v2

    goto :goto_1c

    :catchall_31
    move-exception v0

    goto :goto_29
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_a
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_19
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressQuality:I

    invoke-virtual {p2, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_2e

    move-result v0

    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->commit()V

    goto :goto_d

    :cond_2a
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    goto :goto_d

    :catchall_2e
    move-exception v0

    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_19
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    invoke-static {p2, v2, p3, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;I)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2c

    move-result v0

    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz v0, :cond_28

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->commit()V

    goto :goto_d

    :cond_28
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    goto :goto_d

    :catchall_2c
    move-exception v0

    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    throw v0
.end method

.method public setBufferSize(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    return-void
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public setCompressQuality(I)V
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressQuality:I

    return-void
.end method
