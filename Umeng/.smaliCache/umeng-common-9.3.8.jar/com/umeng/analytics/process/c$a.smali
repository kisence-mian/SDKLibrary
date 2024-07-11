.class Lcom/umeng/analytics/process/c$a;
.super Ljava/lang/Object;
.source "UMProcessDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/process/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Landroid/database/sqlite/SQLiteOpenHelper;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/c$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;
    .registers 3

    .line 88
    invoke-static {p0}, Lcom/umeng/commonsdk/service/UMGlobalContext;->getAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 90
    new-instance v0, Lcom/umeng/analytics/process/c$a;

    invoke-direct {v0}, Lcom/umeng/analytics/process/c$a;-><init>()V

    .line 91
    invoke-static {p0, p1}, Lcom/umeng/analytics/process/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/process/b;

    move-result-object p0

    iput-object p0, v0, Lcom/umeng/analytics/process/c$a;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 93
    return-object v0
.end method


# virtual methods
.method declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/process/c$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 98
    iget-object v0, p0, Lcom/umeng/analytics/process/c$a;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/process/c$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    :cond_12
    iget-object v0, p0, Lcom/umeng/analytics/process/c$a;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    .line 96
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .registers 2

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/process/c$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_10

    .line 106
    iget-object v0, p0, Lcom/umeng/analytics/process/c$a;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_f

    goto :goto_10

    .line 108
    :catchall_f
    move-exception v0

    :cond_10
    :goto_10
    nop

    .line 109
    monitor-exit p0

    return-void
.end method
