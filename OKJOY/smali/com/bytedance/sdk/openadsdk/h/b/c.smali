.class public Lcom/bytedance/sdk/openadsdk/h/b/c;
.super Ljava/lang/Object;
.source "VideoProxyDB.java"


# static fields
.field private static volatile b:Lcom/bytedance/sdk/openadsdk/h/b/c;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/h/b/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/h/b/d;

.field private final d:Ljava/util/concurrent/Executor;

.field private volatile e:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->a:Landroid/util/SparseArray;

    .line 26
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->d:Ljava/util/concurrent/Executor;

    .line 30
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/b/d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/b/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->c:Lcom/bytedance/sdk/openadsdk/h/b/d;

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->a:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->a:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/b/c;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->e:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/b/c;
    .registers 3

    .prologue
    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/b/c;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-nez v0, :cond_13

    .line 37
    const-class v1, Lcom/bytedance/sdk/openadsdk/h/b/c;

    monitor-enter v1

    .line 38
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/b/c;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-nez v0, :cond_12

    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/b/c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/b/c;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    .line 41
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 43
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/b/c;->b:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-object v0

    .line 41
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/b/d;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->c:Lcom/bytedance/sdk/openadsdk/h/b/d;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 154
    if-gtz p1, :cond_5

    .line 155
    const-string v0, ""

    .line 162
    :goto_4
    return-object v0

    .line 157
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    shl-int/lit8 v0, p1, 0x1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 158
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const/4 v0, 0x1

    :goto_12
    if-ge v0, p1, :cond_1c

    .line 160
    const-string v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 162
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/h/b/a;
    .registers 15

    .prologue
    const/4 v10, 0x0

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v10

    .line 77
    :cond_8
    :goto_8
    return-object v0

    .line 51
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    .line 52
    if-nez v9, :cond_19

    move-object v11, v10

    .line 53
    :goto_15
    if-eqz v11, :cond_21

    move-object v0, v11

    .line 54
    goto :goto_8

    .line 52
    :cond_19
    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b/a;

    move-object v11, v0

    goto :goto_15

    .line 58
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->c:Lcom/bytedance/sdk/openadsdk/h/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b/d;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video_http_header_t"

    const/4 v2, 0x0

    const-string v3, "key=? AND flag=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 59
    if-eqz v6, :cond_8f

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 61
    const-string v0, "key"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string v0, "mime"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    const-string v0, "contentLength"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 64
    const-string v0, "extra"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 66
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/b/a;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/h/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 68
    :goto_7e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 71
    :goto_81
    if-eqz v0, :cond_8

    if-eqz v9, :cond_8

    .line 72
    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_88} :catch_89

    goto :goto_8

    .line 76
    :catch_89
    move-exception v0

    move-object v0, v10

    .line 77
    goto/16 :goto_8

    :cond_8d
    move-object v0, v11

    goto :goto_7e

    :cond_8f
    move-object v0, v11

    goto :goto_81
.end method

.method public a(I)V
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 167
    if-eqz v0, :cond_d

    .line 168
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 171
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/b/c$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/h/b/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/b/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/h/b/a;)V
    .registers 4

    .prologue
    .line 82
    if-eqz p1, :cond_1d

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->a:Landroid/util/SparseArray;

    iget v1, p1, Lcom/bytedance/sdk/openadsdk/h/b/a;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 84
    if-eqz v0, :cond_13

    .line 85
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/b/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/b/c$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/h/b/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/b/c;Lcom/bytedance/sdk/openadsdk/h/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    :cond_1d
    return-void
.end method

.method public a(Ljava/util/Collection;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_71

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_71

    .line 135
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 136
    const/4 v1, -0x1

    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 138
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    if-eqz v0, :cond_2f

    .line 140
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    aput-object v1, v3, v2

    goto :goto_1e

    .line 145
    :cond_34
    add-int/lit8 v0, v2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 147
    :try_start_3c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/b/c;->c:Lcom/bytedance/sdk/openadsdk/h/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b/d;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "video_http_header_t"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key IN("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v3

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/h/b/c;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "flag"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_71} :catch_72

    .line 151
    :cond_71
    :goto_71
    return-void

    .line 148
    :catch_72
    move-exception v0

    goto :goto_71
.end method
