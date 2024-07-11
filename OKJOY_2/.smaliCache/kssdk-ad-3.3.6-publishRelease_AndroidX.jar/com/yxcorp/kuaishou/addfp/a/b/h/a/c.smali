.class final Lcom/yxcorp/kuaishou/addfp/a/b/h/a/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/c;->b:Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;

    iput-object p3, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/c;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29a

    if-ne v0, v1, :cond_36

    :try_start_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/c;->a:Landroid/content/Context;

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "appid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_21
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_32

    :try_start_26
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/h/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p1
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_36
    return-void
.end method
