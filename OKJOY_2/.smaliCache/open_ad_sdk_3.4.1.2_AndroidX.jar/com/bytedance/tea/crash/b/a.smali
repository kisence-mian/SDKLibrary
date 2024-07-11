.class public Lcom/bytedance/tea/crash/b/a;
.super Ljava/lang/Object;
.source "NpthDataManager.java"


# static fields
.field private static volatile a:Lcom/bytedance/tea/crash/b/a;


# instance fields
.field private b:Lcom/bytedance/tea/crash/b/b/b;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/b/a;
    .registers 2

    .line 27
    sget-object v0, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    if-nez v0, :cond_17

    .line 28
    const-class v0, Lcom/bytedance/tea/crash/b/a;

    monitor-enter v0

    .line 29
    :try_start_7
    sget-object v1, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    if-nez v1, :cond_12

    .line 30
    new-instance v1, Lcom/bytedance/tea/crash/b/a;

    invoke-direct {v1}, Lcom/bytedance/tea/crash/b/a;-><init>()V

    sput-object v1, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    .line 32
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 34
    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .line 39
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/b/b;

    invoke-direct {v0, p1}, Lcom/bytedance/tea/crash/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/tea/crash/b/a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 42
    goto :goto_10

    .line 40
    :catchall_c
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    .line 43
    :goto_10
    new-instance p1, Lcom/bytedance/tea/crash/b/b/b;

    invoke-direct {p1}, Lcom/bytedance/tea/crash/b/b/b;-><init>()V

    iput-object p1, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    .line 44
    return-void
.end method

.method public declared-synchronized a(Lcom/bytedance/tea/crash/b/a/a;)V
    .registers 4

    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    if-eqz v0, :cond_a

    .line 53
    iget-object v1, p0, Lcom/bytedance/tea/crash/b/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/tea/crash/b/a/a;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 55
    :cond_a
    monitor-exit p0

    return-void

    .line 51
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    if-eqz v0, :cond_d

    .line 65
    iget-object v1, p0, Lcom/bytedance/tea/crash/b/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return p1

    .line 67
    :cond_d
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 63
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
