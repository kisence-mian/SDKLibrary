.class Lcom/tds/common/widgets/image/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/widgets/image/DiskCache$Writer;
    }
.end annotation


# instance fields
.field private final diskLruCache:Lcom/tds/common/widgets/image/DiskLruCache;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/DiskCache;->openCache(Landroid/content/Context;)Lcom/tds/common/widgets/image/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/widgets/image/DiskCache;->diskLruCache:Lcom/tds/common/widgets/image/DiskLruCache;

    .line 13
    return-void
.end method

.method private openCache(Landroid/content/Context;)Lcom/tds/common/widgets/image/DiskLruCache;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "tds-image"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_14
    invoke-static {v0}, Lcom/tds/common/widgets/image/ImageUtil;->calculateDiskCacheSize(Ljava/io/File;)J

    move-result-wide v1

    .line 23
    .local v1, "diskCacheSize":J
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1a
    invoke-static {v0, v3, v4, v1, v2}, Lcom/tds/common/widgets/image/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/tds/common/widgets/image/DiskLruCache;

    move-result-object v3
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v3

    .line 24
    :catch_1f
    move-exception v3

    .line 25
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 26
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskCache;->diskLruCache:Lcom/tds/common/widgets/image/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/tds/common/widgets/image/DiskLruCache;->get(Ljava/lang/String;)Lcom/tds/common/widgets/image/DiskLruCache$Value;

    move-result-object v0

    .line 32
    .local v0, "value":Lcom/tds/common/widgets/image/DiskLruCache$Value;
    if-eqz v0, :cond_e

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object v1

    return-object v1

    .line 35
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method put(Ljava/lang/String;Lcom/tds/common/widgets/image/DiskCache$Writer;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "writer"    # Lcom/tds/common/widgets/image/DiskCache$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskCache;->diskLruCache:Lcom/tds/common/widgets/image/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/tds/common/widgets/image/DiskLruCache;->edit(Ljava/lang/String;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v0

    .line 42
    .local v0, "editor":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v1

    .line 43
    .local v1, "file":Ljava/io/File;
    invoke-interface {p2, v1}, Lcom/tds/common/widgets/image/DiskCache$Writer;->write(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 44
    invoke-virtual {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->commit()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_19

    .line 47
    .end local v1    # "file":Ljava/io/File;
    :cond_14
    invoke-virtual {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 48
    nop

    .line 49
    return-void

    .line 47
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 48
    throw v1
.end method
