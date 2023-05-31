.class public final Lcom/tds/tapdb/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lcom/tds/tapdb/b/o/a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v7, Lcom/tds/tapdb/b/o/a;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/tds/tapdb/b/o/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/tds/tapdb/b/b;->a:Lcom/tds/tapdb/b/o/a;

    invoke-virtual {v7}, Ljava/util/concurrent/ThreadPoolExecutor;->allowsCoreThreadTimeOut()Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/tds/tapdb/b/b;->a:Lcom/tds/tapdb/b/o/a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tds/tapdb/b/o/a;->a(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/tds/tapdb/b/b;->a:Lcom/tds/tapdb/b/o/a;

    invoke-virtual {v0, p0}, Lcom/tds/tapdb/b/o/a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
