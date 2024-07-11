.class Lcom/umeng/analytics/process/c;
.super Ljava/lang/Object;
.source "UMProcessDBManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/process/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/analytics/process/c;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/process/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/umeng/analytics/process/c;
    .registers 3

    .line 29
    sget-object v0, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    if-nez v0, :cond_17

    .line 30
    const-class v0, Lcom/umeng/analytics/process/c;

    monitor-enter v0

    .line 31
    :try_start_7
    sget-object v1, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    if-nez v1, :cond_12

    .line 32
    new-instance v1, Lcom/umeng/analytics/process/c;

    invoke-direct {v1}, Lcom/umeng/analytics/process/c;-><init>()V

    sput-object v1, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    .line 34
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 36
    :cond_17
    :goto_17
    sget-object v0, Lcom/umeng/analytics/process/c;->a:Lcom/umeng/analytics/process/c;

    iput-object p0, v0, Lcom/umeng/analytics/process/c;->c:Landroid/content/Context;

    .line 38
    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_14

    .line 63
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/analytics/process/c$a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 66
    :cond_14
    iget-object v0, p0, Lcom/umeng/analytics/process/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/umeng/analytics/process/c$a;

    .line 68
    :goto_1d
    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    monitor-enter p0

    .line 48
    :try_start_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/c;->c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/process/c$a;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    .line 48
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 56
    :try_start_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/c;->c(Ljava/lang/String;)Lcom/umeng/analytics/process/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/process/c$a;->b()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 57
    monitor-exit p0

    return-void

    .line 55
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
