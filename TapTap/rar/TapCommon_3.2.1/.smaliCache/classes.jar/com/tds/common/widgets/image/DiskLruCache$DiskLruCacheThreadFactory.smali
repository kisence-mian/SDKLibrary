.class final Lcom/tds/common/widgets/image/DiskLruCache$DiskLruCacheThreadFactory;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiskLruCacheThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$1;

    .line 935
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache$DiskLruCacheThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 938
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "glide-disk-lru-cache-thread"

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 939
    .local v0, "result":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 940
    monitor-exit p0

    return-object v0

    .line 937
    .end local v0    # "result":Ljava/lang/Thread;
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache$DiskLruCacheThreadFactory;
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
