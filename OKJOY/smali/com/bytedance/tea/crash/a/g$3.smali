.class final Lcom/bytedance/tea/crash/a/g$3;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/tea/crash/a/g;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 372
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->q()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->r()J

    move-result-wide v4

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 375
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->q()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->r()J

    move-result-wide v2

    rem-long/2addr v0, v2

    .line 376
    const-wide/16 v2, 0x5f

    cmp-long v2, v0, v2

    if-ltz v2, :cond_40

    .line 377
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->i()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 378
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->r()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    sub-long v0, v2, v0

    .line 383
    :goto_38
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->s()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    return-void

    .line 380
    :cond_40
    invoke-static {}, Lcom/bytedance/tea/crash/a/g;->r()J

    move-result-wide v2

    sub-long v0, v2, v0

    goto :goto_38
.end method
