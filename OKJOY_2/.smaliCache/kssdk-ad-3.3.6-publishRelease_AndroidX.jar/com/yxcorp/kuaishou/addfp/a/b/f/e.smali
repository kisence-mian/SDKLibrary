.class final Lcom/yxcorp/kuaishou/addfp/a/b/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/yxcorp/kuaishou/addfp/a/b/f/d;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a/b/f/d;)V
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/e;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/e;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/d;

    invoke-static {p2}, Lcom/yxcorp/kuaishou/addfp/a/b/f/b;->a(Landroid/os/IBinder;)Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

    move-result-object p2

    iput-object p2, p1, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/e;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/d;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a(Lcom/yxcorp/kuaishou/addfp/a/b/f/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/e;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/d;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a(Lcom/yxcorp/kuaishou/addfp/a/b/f/d;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception p1

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/f/e;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/d;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/yxcorp/kuaishou/addfp/a/b/f/d;->a:Lcom/yxcorp/kuaishou/addfp/a/b/f/a;

    return-void
.end method