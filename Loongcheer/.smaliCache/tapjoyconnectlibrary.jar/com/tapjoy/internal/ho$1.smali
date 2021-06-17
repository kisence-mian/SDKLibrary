.class final Lcom/tapjoy/internal/ho$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ho;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ho;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/ho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/ho;

    .line 1015
    iget-object v0, v0, Lcom/tapjoy/internal/ho;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 72
    const-string v0, "The session ended"

    invoke-static {v0}, Lcom/tapjoy/internal/gy;->a(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tapjoy/internal/ho$1;->a:Lcom/tapjoy/internal/ho;

    .line 2015
    iget-object v0, v0, Lcom/tapjoy/internal/ho;->a:Lcom/tapjoy/internal/ha;

    .line 73
    nop

    .line 2102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/tapjoy/internal/ha;->c:J

    sub-long/2addr v1, v3

    .line 2103
    iget-object v3, v0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    .line 2409
    monitor-enter v3

    .line 2410
    :try_start_20
    iget-object v4, v3, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v4, v4, Lcom/tapjoy/internal/hl;->i:Lcom/tapjoy/internal/k;

    invoke-virtual {v4}, Lcom/tapjoy/internal/k;->a()J

    move-result-wide v4

    add-long/2addr v4, v1

    .line 2411
    iget-object v6, v3, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v6, v6, Lcom/tapjoy/internal/hl;->i:Lcom/tapjoy/internal/k;

    invoke-virtual {v6, v4, v5}, Lcom/tapjoy/internal/k;->a(J)V

    .line 2412
    iget-object v6, v3, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v6, Lcom/tapjoy/internal/fi$a;->i:Ljava/lang/Long;

    .line 2413
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_9e

    .line 2104
    sget-object v3, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string v4, "session"

    invoke-virtual {v0, v3, v4}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v3

    .line 2105
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/tapjoy/internal/ew$a;->i:Ljava/lang/Long;

    .line 2106
    invoke-virtual {v0, v3}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 2108
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/tapjoy/internal/ha;->c:J

    .line 2109
    iget-object v4, v0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    iget-object v3, v3, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2417
    monitor-enter v4

    .line 2418
    :try_start_57
    iget-object v3, v4, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    invoke-virtual {v3}, Lcom/tapjoy/internal/hl;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2419
    iget-object v7, v4, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v7, v7, Lcom/tapjoy/internal/hl;->j:Lcom/tapjoy/internal/k;

    invoke-virtual {v7, v3, v5, v6}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 2420
    iget-object v7, v4, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v7, v7, Lcom/tapjoy/internal/hl;->k:Lcom/tapjoy/internal/k;

    invoke-virtual {v7, v3, v1, v2}, Lcom/tapjoy/internal/k;->a(Landroid/content/SharedPreferences$Editor;J)Landroid/content/SharedPreferences$Editor;

    .line 2421
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2423
    iget-object v3, v4, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v3, Lcom/tapjoy/internal/fi$a;->j:Ljava/lang/Long;

    .line 2424
    iget-object v3, v4, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/tapjoy/internal/fi$a;->k:Ljava/lang/Long;

    .line 2425
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_57 .. :try_end_7f} :catchall_9b

    .line 2110
    iget-object v0, v0, Lcom/tapjoy/internal/ha;->b:Lcom/tapjoy/internal/gz;

    .line 3199
    iget-object v1, v0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/by;

    if-eqz v1, :cond_90

    .line 3200
    invoke-virtual {v0}, Lcom/tapjoy/internal/gz;->a()V

    .line 3201
    new-instance v1, Lcom/tapjoy/internal/gz$1;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/gz$1;-><init>(Lcom/tapjoy/internal/gz;)V

    .line 3206
    invoke-virtual {v1}, Lcom/tapjoy/internal/gz$1;->run()V

    .line 3209
    :cond_90
    iget-object v0, v0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hn;->flush()V

    .line 74
    sget-object v0, Lcom/tapjoy/internal/ft;->d:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ft$a;->notifyObservers()V

    goto :goto_a1

    .line 2425
    :catchall_9b
    move-exception v0

    :try_start_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v0

    .line 2413
    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit v3
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0

    .line 76
    :cond_a1
    :goto_a1
    return-void
.end method
