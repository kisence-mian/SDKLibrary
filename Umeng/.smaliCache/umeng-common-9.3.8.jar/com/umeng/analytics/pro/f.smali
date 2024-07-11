.class Lcom/umeng/analytics/pro/f;
.super Ljava/lang/Object;
.source "UMDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/f$a;
    }
.end annotation


# static fields
.field private static b:Landroid/database/sqlite/SQLiteOpenHelper;

.field private static d:Landroid/content/Context;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/f$1;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/umeng/analytics/pro/f;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/f;
    .registers 2

    .line 31
    sget-object v0, Lcom/umeng/analytics/pro/f;->d:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 32
    if-eqz p0, :cond_12

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/f;->d:Landroid/content/Context;

    .line 34
    invoke-static {p0}, Lcom/umeng/analytics/pro/e;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/f;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 37
    :cond_12
    invoke-static {}, Lcom/umeng/analytics/pro/f$a;->a()Lcom/umeng/analytics/pro/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 43
    sget-object v0, Lcom/umeng/analytics/pro/f;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    :cond_12
    iget-object v0, p0, Lcom/umeng/analytics/pro/f;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 40
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_10

    .line 52
    iget-object v0, p0, Lcom/umeng/analytics/pro/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_10

    .line 54
    :catchall_f
    move-exception v0

    :cond_10
    :goto_10
    nop

    .line 55
    monitor-exit p0

    return-void
.end method
