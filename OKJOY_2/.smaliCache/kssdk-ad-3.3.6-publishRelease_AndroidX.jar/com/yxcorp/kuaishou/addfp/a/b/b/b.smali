.class final Lcom/yxcorp/kuaishou/addfp/a/b/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/b;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/b;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    if-nez p2, :cond_6

    const/4 p2, 0x0

    goto :goto_1d

    :cond_6
    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v1, v0, Lcom/yxcorp/kuaishou/addfp/a/b/a/b;

    if-nez v1, :cond_13

    goto :goto_17

    :cond_13
    move-object p2, v0

    check-cast p2, Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    goto :goto_1d

    :cond_17
    :goto_17
    new-instance v0, Lcom/yxcorp/kuaishou/addfp/a/b/b/e;

    invoke-direct {v0, p2}, Lcom/yxcorp/kuaishou/addfp/a/b/b/e;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    :goto_1d
    invoke-static {p1, p2}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;Lcom/yxcorp/kuaishou/addfp/a/b/b/d;)Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/b;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/b;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    :cond_31
    return-void

    :catchall_32
    move-exception p1

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/b/b;->a:Lcom/yxcorp/kuaishou/addfp/a/b/b/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/b/a;->a(Lcom/yxcorp/kuaishou/addfp/a/b/b/a;Lcom/yxcorp/kuaishou/addfp/a/b/b/d;)Lcom/yxcorp/kuaishou/addfp/a/b/b/d;

    return-void
.end method
