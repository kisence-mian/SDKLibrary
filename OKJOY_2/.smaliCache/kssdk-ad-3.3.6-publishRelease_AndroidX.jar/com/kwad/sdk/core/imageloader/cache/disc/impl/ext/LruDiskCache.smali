.class public Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;
.super Ljava/lang/Object;

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
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    sget-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressQuality:I

    if-eqz p1, :cond_4d

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_45

    if-ltz p6, :cond_3d

    if-eqz p3, :cond_35

    if-nez v0, :cond_23

    const-wide p4, 0x7fffffffffffffffL

    :cond_23
    move-wide v3, p4

    if-nez p6, :cond_29

    const p6, 0x7fffffff

    :cond_29
    move v5, p6

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->reserveCacheDir:Ljava/io/File;

    iput-object p3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->fileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxFileCount argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxSize argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheDir argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->fileNameGenerator:Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initCache(Ljava/io/File;Ljava/io/File;JI)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    :try_start_5
    invoke-static/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->open(Ljava/io/File;IIJI)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_1e

    :catch_c
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1a

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    :cond_1a
    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    if-eqz p2, :cond_1f

    :goto_1e
    return-void

    :cond_1f
    throw p1
.end method


# virtual methods
.method public clear()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->delete()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    :goto_a
    :try_start_a
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
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    :goto_27
    return-void
.end method

.method public close()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;

    move-result-object p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_20
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b

    if-nez p1, :cond_e

    goto :goto_13

    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p1, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->getFile(I)Ljava/io/File;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_19
    .catchall {:try_start_f .. :try_end_13} :catchall_2b

    :goto_13
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    :cond_18
    return-object v0

    :catch_19
    move-exception v1

    goto :goto_22

    :catchall_1b
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2c

    :catch_20
    move-exception v1

    move-object p1, v0

    :goto_22
    :try_start_22
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_2b

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    :cond_2a
    return-object v0

    :catchall_2b
    move-exception v0

    :goto_2c
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;->close()V

    :cond_31
    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/utils/L;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return v0

    :cond_e
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_19
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->compressQuality:I

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_2e

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz p2, :cond_2a

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->commit()V

    goto :goto_2d

    :cond_2a
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    :goto_2d
    return p2

    :catchall_2e
    move-exception p1

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p1
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z
    .registers 7

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_e

    return v0

    :cond_e
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_19
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/LruDiskCache;->bufferSize:I

    invoke-static {p2, v1, p3, v0}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;I)Z

    move-result p2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2c

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    if-eqz p2, :cond_28

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->commit()V

    goto :goto_2b

    :cond_28
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    :goto_2b
    return p2

    :catchall_2c
    move-exception p2

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    throw p2
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
