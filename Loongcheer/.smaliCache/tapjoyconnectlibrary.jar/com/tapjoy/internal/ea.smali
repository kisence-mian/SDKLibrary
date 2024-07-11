.class public final Lcom/tapjoy/internal/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/dz$a;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/tapjoy/internal/dz;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/tapjoy/internal/dz;


# direct methods
.method public constructor <init>()V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ea;->c:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ea;->d:Lcom/tapjoy/internal/dz;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v7, p0, Lcom/tapjoy/internal/ea;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tapjoy/internal/ea;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/ea;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dz;

    iput-object v0, p0, Lcom/tapjoy/internal/ea;->d:Lcom/tapjoy/internal/dz;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/tapjoy/internal/ea;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/dz;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/ea;->d:Lcom/tapjoy/internal/dz;

    invoke-direct {p0}, Lcom/tapjoy/internal/ea;->b()V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/dz;)V
    .registers 3

    .line 1000
    iput-object p0, p1, Lcom/tapjoy/internal/dz;->d:Lcom/tapjoy/internal/dz$a;

    iget-object v0, p0, Lcom/tapjoy/internal/ea;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/tapjoy/internal/ea;->d:Lcom/tapjoy/internal/dz;

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/tapjoy/internal/ea;->b()V

    :cond_e
    return-void
.end method
