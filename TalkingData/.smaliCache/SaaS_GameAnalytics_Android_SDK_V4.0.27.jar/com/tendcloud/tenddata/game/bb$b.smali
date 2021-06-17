.class Lcom/tendcloud/tenddata/game/bb$b;
.super Landroid/content/BroadcastReceiver;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 998
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1000
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb$b;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method await()V
    .registers 5

    .line 1015
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb$b;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    .line 1018
    goto :goto_e

    .line 1016
    :catchall_a
    move-exception v0

    .line 1017
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->eForInternal(Ljava/lang/Throwable;)V

    .line 1019
    :goto_e
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1004
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bb$b;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1d

    .line 1005
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bb$b;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1007
    :cond_1d
    return-void
.end method

.method reset()V
    .registers 3

    .line 1010
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bb$b;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 1011
    return-void
.end method
