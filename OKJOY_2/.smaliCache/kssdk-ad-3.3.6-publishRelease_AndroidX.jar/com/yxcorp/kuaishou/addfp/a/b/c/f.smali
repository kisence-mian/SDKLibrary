.class final Lcom/yxcorp/kuaishou/addfp/a/b/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;)V
    .registers 2

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/f;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/f;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-static {p2}, Lcom/yxcorp/kuaishou/addfp/a/b/c/b;->a(Landroid/os/IBinder;)Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;Lcom/yxcorp/kuaishou/addfp/a/b/c/a;)Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/f;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/f;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception p1

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/c/f;->a:Lcom/yxcorp/kuaishou/addfp/a/b/c/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yxcorp/kuaishou/addfp/a/b/c/e;->a(Lcom/yxcorp/kuaishou/addfp/a/b/c/e;Lcom/yxcorp/kuaishou/addfp/a/b/c/a;)Lcom/yxcorp/kuaishou/addfp/a/b/c/a;

    return-void
.end method
