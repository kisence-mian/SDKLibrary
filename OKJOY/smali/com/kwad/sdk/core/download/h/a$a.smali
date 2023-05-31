.class Lcom/kwad/sdk/core/download/h/a$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/download/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/h/a$a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    const-wide/16 v8, 0x6e

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_27

    move v2, v0

    :goto_9
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v0, :cond_29

    move v3, v0

    :goto_e
    iget-object v0, p0, Lcom/kwad/sdk/core/download/h/a$a;->a:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {}, Lcom/ksad/download/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_2b

    :goto_26
    return-void

    :cond_27
    move v2, v1

    goto :goto_9

    :cond_29
    move v3, v1

    goto :goto_e

    :cond_2b
    invoke-static {}, Lcom/ksad/download/d;->e()Lcom/ksad/download/d;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Lcom/ksad/download/d;->c(I)Lcom/ksad/download/DownloadTask;

    move-result-object v4

    if-nez v4, :cond_42

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_26

    :cond_42
    if-nez v2, :cond_53

    if-eqz v0, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v4, v8

    if-ltz v2, :cond_73

    :cond_53
    if-eqz v3, :cond_5a

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_5a
    iget v1, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/Notification;

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/download/h/a;->a(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/h/a$a;->a:Landroid/util/SparseArray;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_26

    :cond_73
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_26
.end method
