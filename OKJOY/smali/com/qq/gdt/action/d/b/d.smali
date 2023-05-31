.class public Lcom/qq/gdt/action/d/b/d;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/util/concurrent/Executor;

.field public d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 9

    const-wide/16 v2, 0x1e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/qq/gdt/action/d/b/d;->a:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/qq/gdt/action/d/b/d;->b:I

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/16 v3, 0xa

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/qq/gdt/action/d/b/d;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/qq/gdt/action/d/b/d$1;

    invoke-direct {v0, p0}, Lcom/qq/gdt/action/d/b/d$1;-><init>(Lcom/qq/gdt/action/d/b/d;)V

    iput-object v0, p0, Lcom/qq/gdt/action/d/b/d;->d:Ljava/util/concurrent/Executor;

    return-void
.end method
