.class public final Lcom/tapjoy/internal/gj;
.super Lcom/tapjoy/internal/gi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gj$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/ha;)V
    .registers 10

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gi;-><init>(Ljava/io/File;Lcom/tapjoy/internal/ha;)V

    .line 22
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/tapjoy/internal/gj;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gj;J)V
    .registers 3

    .line 16
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/gi;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gj;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .line 16
    invoke-super/range {p0 .. p5}, Lcom/tapjoy/internal/gi;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/gj;)V
    .registers 1

    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/gi;->a()V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/gj;)V
    .registers 1

    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/gi;->a()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 11

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/tapjoy/internal/gj$a;

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gj$a;-><init>(Lcom/tapjoy/internal/gj;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    .line 90
    return-void

    .line 88
    :catchall_13
    move-exception v0

    .line 91
    return-void
.end method

.method protected final a(J)V
    .registers 13

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/tapjoy/internal/gj$a;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gj$a;-><init>(Lcom/tapjoy/internal/gj;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 81
    return-void

    .line 79
    :catchall_12
    move-exception p1

    .line 82
    return-void
.end method

.method protected final a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/tapjoy/internal/gj$a;

    const/4 v3, 0x3

    if-eqz p5, :cond_e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v8, v1

    goto :goto_10

    :cond_e
    const/4 p5, 0x0

    move-object v8, p5

    :goto_10
    move-object v1, v9

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gj$a;-><init>(Lcom/tapjoy/internal/gj;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 99
    return-void

    .line 97
    :catchall_1c
    move-exception p1

    .line 100
    return-void
.end method

.method protected final finalize()V
    .registers 5

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 30
    iget-object v0, p0, Lcom/tapjoy/internal/gj;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 32
    invoke-super {p0}, Lcom/tapjoy/internal/gi;->finalize()V

    .line 33
    return-void

    .line 32
    :catchall_12
    move-exception v0

    invoke-super {p0}, Lcom/tapjoy/internal/gi;->finalize()V

    .line 33
    throw v0
.end method
