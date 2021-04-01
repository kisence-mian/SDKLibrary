.class final Lcom/mintegral/msdk/e/a$1;
.super Landroid/os/Handler;
.source "LoopTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/e/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/e/a;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mintegral/msdk/e/a$1;->a:Lcom/mintegral/msdk/e/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 44
    iget-object v1, p0, Lcom/mintegral/msdk/e/a$1;->a:Lcom/mintegral/msdk/e/a;

    monitor-enter v1

    .line 45
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 59
    :goto_8
    monitor-exit v1

    :goto_9
    return-void

    .line 47
    :pswitch_a
    iget-object v0, p0, Lcom/mintegral/msdk/e/a$1;->a:Lcom/mintegral/msdk/e/a;

    invoke-static {v0}, Lcom/mintegral/msdk/e/a;->a(Lcom/mintegral/msdk/e/a;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 48
    monitor-exit v1

    goto :goto_9

    .line 59
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0

    .line 50
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/mintegral/msdk/e/a$1;->a:Lcom/mintegral/msdk/e/a;

    invoke-static {v0}, Lcom/mintegral/msdk/e/a;->c(Lcom/mintegral/msdk/e/a;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/e/a$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/e/a$1;->a:Lcom/mintegral/msdk/e/a;

    invoke-static {v2}, Lcom/mintegral/msdk/e/a;->b(Lcom/mintegral/msdk/e/a;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mintegral/msdk/e/a$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    .line 54
    :pswitch_2b
    iget-object v0, p0, Lcom/mintegral/msdk/e/a$1;->a:Lcom/mintegral/msdk/e/a;

    invoke-static {v0}, Lcom/mintegral/msdk/e/a;->d(Lcom/mintegral/msdk/e/a;)V
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_14

    goto :goto_8

    .line 45
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_a
        :pswitch_2b
    .end packed-switch
.end method
