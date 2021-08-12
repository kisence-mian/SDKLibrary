.class public Lcom/bytedance/sdk/openadsdk/i/b/c;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"


# static fields
.field private static volatile b:Lcom/bytedance/sdk/openadsdk/i/b/c;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/i/b/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/i/b/d;

.field private final d:Ljava/util/concurrent/Executor;

.field private volatile e:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 12

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->a:Landroid/util/SparseArray;

    .line 29
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/openadsdk/j/h;

    const/4 v2, 0x5

    const-string v3, "video_proxy_db"

    invoke-direct {v9, v2, v3}, Lcom/bytedance/sdk/openadsdk/j/h;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3c

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->d:Ljava/util/concurrent/Executor;

    .line 33
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/i/b/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->c:Lcom/bytedance/sdk/openadsdk/i/b/d;

    .line 34
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/b/c;)Landroid/database/sqlite/SQLiteStatement;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/i/b/c;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/i/b/c;
    .registers 3

    .line 39
    sget-object v0, Lcom/bytedance/sdk/openadsdk/i/b/c;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    if-nez v0, :cond_17

    .line 40
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/b/c;

    monitor-enter v0

    .line 41
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/i/b/c;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    if-nez v1, :cond_12

    .line 42
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b/c;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/i/b/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/i/b/c;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    .line 44
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 46
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->b:Lcom/bytedance/sdk/openadsdk/i/b/c;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/i/b/c;)Lcom/bytedance/sdk/openadsdk/i/b/d;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->c:Lcom/bytedance/sdk/openadsdk/i/b/d;

    return-object p0
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    .line 157
    if-gtz p1, :cond_5

    .line 158
    const-string p1, ""

    return-object p1

    .line 160
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    shl-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 161
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v1, 0x1

    :goto_12
    if-ge v1, p1, :cond_1c

    .line 163
    const-string v2, ",?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 165
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/i/b/a;
    .registers 16

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 51
    return-object v1

    .line 54
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 55
    if-nez v0, :cond_14

    move-object v2, v1

    goto :goto_1a

    :cond_14
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/i/b/a;

    .line 56
    :goto_1a
    if-eqz v2, :cond_1d

    .line 57
    return-object v2

    .line 61
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->c:Lcom/bytedance/sdk/openadsdk/i/b/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/i/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "video_http_header_t"

    const/4 v6, 0x0

    const-string v7, "key=? AND flag=?"

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v8, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "1"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_7e

    .line 63
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7b

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 64
    const-string v2, "key"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 65
    const-string v2, "mime"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    const-string v2, "contentLength"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 67
    const-string v2, "extra"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 69
    new-instance v2, Lcom/bytedance/sdk/openadsdk/i/b/a;

    move-object v4, v2

    move v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/i/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 71
    :cond_7b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_7e
    if-eqz v2, :cond_85

    if-eqz v0, :cond_85

    .line 75
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_1d .. :try_end_85} :catchall_86

    .line 78
    :cond_85
    return-object v2

    .line 79
    :catchall_86
    move-exception p1

    .line 80
    return-object v1
.end method

.method public a(I)V
    .registers 4

    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 170
    if-eqz v0, :cond_d

    .line 171
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b/c$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/i/b/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/i/b/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/i/b/a;)V
    .registers 4

    .line 85
    if-eqz p1, :cond_1d

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/i/b/a;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 87
    if-eqz v0, :cond_13

    .line 88
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/i/b/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/i/b/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/i/b/c;Lcom/bytedance/sdk/openadsdk/i/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 116
    :cond_1d
    return-void
.end method

.method public a(Ljava/util/Collection;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 137
    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 139
    const/4 v2, -0x1

    .line 140
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 141
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    if-eqz v3, :cond_2e

    .line 143
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    aput-object v4, v1, v2

    .line 146
    goto :goto_1d

    .line 148
    :cond_33
    add-int/lit8 v2, v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 150
    :try_start_3b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/b/c;->c:Lcom/bytedance/sdk/openadsdk/i/b/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/i/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "video_http_header_t"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/i/b/c;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "flag"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_70

    .line 152
    goto :goto_71

    .line 151
    :catchall_70
    move-exception p1

    .line 154
    :cond_71
    :goto_71
    return-void
.end method
