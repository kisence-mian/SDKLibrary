.class public abstract Lcom/tapjoy/internal/kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/kg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/kd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/kg<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tapjoy/internal/kd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/kd$a<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tapjoy/internal/kf;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/tapjoy/internal/kd$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/kd$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    .line 71
    new-instance v0, Lcom/tapjoy/internal/kf;

    invoke-direct {v0}, Lcom/tapjoy/internal/kf;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/kd;->b:Lcom/tapjoy/internal/kf;

    .line 215
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    .line 2321
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/kd$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result p1

    .line 168
    nop

    .line 169
    if-eqz p1, :cond_10

    .line 170
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->b:Lcom/tapjoy/internal/kf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kf;->a()V

    .line 172
    :cond_10
    return p1
.end method

.method protected final a(Ljava/lang/Throwable;)Z
    .registers 6

    .line 186
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    invoke-static {p1}, Lcom/tapjoy/internal/jr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 2328
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lcom/tapjoy/internal/kd$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    .line 186
    nop

    .line 187
    if-eqz v0, :cond_16

    .line 188
    iget-object v1, p0, Lcom/tapjoy/internal/kd;->b:Lcom/tapjoy/internal/kf;

    invoke-virtual {v1}, Lcom/tapjoy/internal/kf;->a()V

    .line 193
    :cond_16
    instance-of v1, p1, Ljava/lang/Error;

    if-nez v1, :cond_1b

    .line 196
    return v0

    .line 194
    :cond_1b
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public cancel(Z)Z
    .registers 5
    .param p1, "mayInterruptIfRunning"    # Z

    .line 126
    .local p0, "this":Lcom/tapjoy/internal/kd;, "Lcom/tapjoy/internal/kd<TV;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    .line 1335
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v1, v2}, Lcom/tapjoy/internal/kd$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;I)Z

    move-result v0

    .line 126
    if-nez v0, :cond_c

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_c
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->b:Lcom/tapjoy/internal/kf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kf;->a()V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    .line 1275
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/kd$a;->acquireSharedInterruptibly(I)V

    .line 1276
    invoke-virtual {v0}, Lcom/tapjoy/internal/kd$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/tapjoy/internal/kd;, "Lcom/tapjoy/internal/kd<TV;>;"
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    .line 1258
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/tapjoy/internal/kd$a;->tryAcquireSharedNanos(IJ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1262
    invoke-virtual {v0}, Lcom/tapjoy/internal/kd$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 91
    return-object v0

    .line 1259
    :cond_12
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for task."

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCancelled()Z
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kd$a;->c()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/tapjoy/internal/kd;->a:Lcom/tapjoy/internal/kd$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/kd$a;->b()Z

    move-result v0

    return v0
.end method
