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

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/b/a;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    if-nez v0, :cond_13

    .line 28
    const-class v1, Lcom/bytedance/tea/crash/b/a;

    monitor-enter v1

    .line 29
    :try_start_7
    sget-object v0, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    if-nez v0, :cond_12

    .line 30
    new-instance v0, Lcom/bytedance/tea/crash/b/a;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/b/a;-><init>()V

    sput-object v0, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    .line 32
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 34
    :cond_13
    sget-object v0, Lcom/bytedance/tea/crash/b/a;->a:Lcom/bytedance/tea/crash/b/a;

    return-object v0

    .line 32
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Lcom/bytedance/tea/crash/b/b;

    invoke-direct {v0, p1}, Lcom/bytedance/tea/crash/b/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/tea/crash/b/a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_13

    .line 43
    :goto_b
    new-instance v0, Lcom/bytedance/tea/crash/b/b/b;

    invoke-direct {v0}, Lcom/bytedance/tea/crash/b/b/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    .line 44
    return-void

    .line 40
    :catch_13
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/bytedance/tea/crash/g/j;->b(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public declared-synchronized a(Lcom/bytedance/tea/crash/b/a/a;)V
    .registers 4

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    iget-object v1, p0, Lcom/bytedance/tea/crash/b/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/bytedance/tea/crash/b/a/a;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 55
    :cond_c
    monitor-exit p0

    return-void

    .line 52
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    if-eqz v0, :cond_f

    .line 65
    iget-object v0, p0, Lcom/bytedance/tea/crash/b/a;->b:Lcom/bytedance/tea/crash/b/b/b;

    iget-object v1, p0, Lcom/bytedance/tea/crash/b/a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/tea/crash/b/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    move-result v0

    .line 67
    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    .line 64
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
