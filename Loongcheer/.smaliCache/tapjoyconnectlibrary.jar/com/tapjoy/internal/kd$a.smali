.class final Lcom/tapjoy/internal/kd$a;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/kd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Throwable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/tapjoy/internal/kd$a;->getState()I

    move-result v0

    .line 286
    packed-switch v0, :pswitch_data_2e

    .line 298
    :pswitch_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error, synchronizer in invalid state: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :pswitch_17
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Task was cancelled."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_1f
    iget-object v0, p0, Lcom/tapjoy/internal/kd$a;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_26

    .line 291
    iget-object v0, p0, Lcom/tapjoy/internal/kd$a;->a:Ljava/lang/Object;

    return-object v0

    .line 289
    :cond_26
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/tapjoy/internal/kd$a;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_7
        :pswitch_17
    .end packed-switch
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            "I)Z"
        }
    .end annotation

    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/kd$a;->compareAndSetState(II)Z

    move-result v0

    .line 352
    if-eqz v0, :cond_10

    .line 355
    iput-object p1, p0, Lcom/tapjoy/internal/kd$a;->a:Ljava/lang/Object;

    .line 356
    iput-object p2, p0, Lcom/tapjoy/internal/kd$a;->b:Ljava/lang/Throwable;

    .line 357
    invoke-virtual {p0, p3}, Lcom/tapjoy/internal/kd$a;->releaseShared(I)Z

    goto :goto_1a

    .line 358
    :cond_10
    invoke-virtual {p0}, Lcom/tapjoy/internal/kd$a;->getState()I

    move-result p1

    if-ne p1, v1, :cond_1a

    .line 361
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/kd$a;->acquireShared(I)V

    .line 363
    :cond_1a
    :goto_1a
    return v0
.end method

.method final b()Z
    .registers 2

    .line 307
    invoke-virtual {p0}, Lcom/tapjoy/internal/kd$a;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .registers 3

    .line 314
    invoke-virtual {p0}, Lcom/tapjoy/internal/kd$a;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected final tryAcquireShared(I)I
    .registers 3
    .param p1, "ignored"    # I

    .line 233
    .local p0, "this":Lcom/tapjoy/internal/kd$a;, "Lcom/tapjoy/internal/kd$a<TV;>;"
    invoke-virtual {p0}, Lcom/tapjoy/internal/kd$a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method protected final tryReleaseShared(I)Z
    .registers 3
    .param p1, "finalState"    # I

    .line 245
    .local p0, "this":Lcom/tapjoy/internal/kd$a;, "Lcom/tapjoy/internal/kd$a<TV;>;"
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/kd$a;->setState(I)V

    .line 246
    const/4 v0, 0x1

    return v0
.end method
