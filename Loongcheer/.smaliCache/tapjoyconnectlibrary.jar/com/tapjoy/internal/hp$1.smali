.class final Lcom/tapjoy/internal/hp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 22
    invoke-static {}, Lcom/tapjoy/internal/u;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 23
    sget-object v0, Lcom/tapjoy/internal/hp;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    return-void

    .line 26
    :cond_c
    invoke-static {}, Lcom/tapjoy/internal/u;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 27
    sget-object v0, Lcom/tapjoy/internal/hp;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 29
    :cond_18
    sget-object v0, Lcom/tapjoy/internal/hp;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0x12c

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 31
    return-void
.end method
