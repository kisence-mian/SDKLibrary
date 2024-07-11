.class final Lcom/yxcorp/kuaishou/addfp/a/b/d/a/b;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;


# direct methods
.method constructor <init>(Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/b;->b:Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;

    iput-object p3, p0, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/b;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29a

    if-ne v0, v1, :cond_30

    :try_start_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/b;->a:Landroid/content/Context;

    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_1b
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->c()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2c

    :try_start_20
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a/b/d/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p1

    invoke-static {p1}, Lcom/yxcorp/kuaishou/addfp/android/b/b;->a(Ljava/lang/Throwable;)V

    :cond_30
    return-void
.end method
