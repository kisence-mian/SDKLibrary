.class Lcom/tds/common/widgets/image/MemCache;
.super Ljava/lang/Object;
.source "MemCache.java"


# instance fields
.field private final lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/tds/common/widgets/image/ImageUtil;->calculateMemoryCacheSize(Landroid/content/Context;)I

    move-result v0

    .line 12
    .local v0, "memCacheSize":I
    new-instance v1, Lcom/tds/common/widgets/image/MemCache$1;

    invoke-direct {v1, p0, v0}, Lcom/tds/common/widgets/image/MemCache$1;-><init>(Lcom/tds/common/widgets/image/MemCache;I)V

    iput-object v1, p0, Lcom/tds/common/widgets/image/MemCache;->lruCache:Landroid/util/LruCache;

    .line 28
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/tds/common/widgets/image/MemCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 35
    iget-object v0, p0, Lcom/tds/common/widgets/image/MemCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method
