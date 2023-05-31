.class public Lcom/bytedance/tea/crash/e/g;
.super Ljava/lang/Object;
.source "LooperTrace.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/tea/crash/e/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(J)V
    .registers 8

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    :goto_1
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v0

    const-wide/16 v4, 0x5

    cmp-long v0, v2, v4

    if-gez v0, :cond_27

    .line 23
    sget-object v0, Lcom/bytedance/tea/crash/e/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 24
    sget-object v0, Lcom/bytedance/tea/crash/e/g;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    or-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 28
    :cond_27
    return-void

    :cond_28
    move v0, v1

    .line 27
    goto :goto_1
.end method
