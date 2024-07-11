.class Lcom/kwad/sdk/core/download/c/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/download/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
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

    iput-object v0, p0, Lcom/kwad/sdk/core/download/c/a$a;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_16

    move v1, v2

    :cond_16
    iget-object v2, p0, Lcom/kwad/sdk/core/download/c/a$a;->a:Landroid/util/SparseArray;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {}, Lcom/ksad/download/b;->a()Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    if-nez v4, :cond_2f

    return-void

    :cond_2f
    invoke-static {}, Lcom/ksad/download/d;->a()Lcom/ksad/download/d;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Lcom/ksad/download/d;->a(I)Lcom/ksad/download/DownloadTask;

    move-result-object v5

    if-nez v5, :cond_48

    if-nez v1, :cond_48

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/download/c/a$a;->removeMessages(I)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_48
    if-nez v0, :cond_6e

    if-eqz v2, :cond_6e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x6e

    cmp-long v0, v0, v5

    if-ltz v0, :cond_5c

    goto :goto_6e

    :cond_5c
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/kwad/sdk/core/download/c/a$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8d

    :cond_6e
    :goto_6e
    if-eqz v3, :cond_75

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_75
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/Notification;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/c/a;->a(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/c/a$a;->a:Landroid/util/SparseArray;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_8d
    return-void
.end method
