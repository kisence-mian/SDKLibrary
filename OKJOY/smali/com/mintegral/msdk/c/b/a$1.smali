.class final Lcom/mintegral/msdk/c/b/a$1;
.super Landroid/os/Handler;
.source "ActiveAppUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/c/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/c/b/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/c/b/a;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mintegral/msdk/c/b/a$1;->a:Lcom/mintegral/msdk/c/b/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 174
    iget-object v1, p0, Lcom/mintegral/msdk/c/b/a$1;->a:Lcom/mintegral/msdk/c/b/a;

    monitor-enter v1

    .line 175
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 176
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_32

    .line 191
    :goto_c
    monitor-exit v1

    return-void

    .line 178
    :pswitch_e
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 179
    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 180
    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mintegral/msdk/c/b/a$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c

    .line 191
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0

    .line 184
    :pswitch_1f
    :try_start_1f
    iget-object v2, p0, Lcom/mintegral/msdk/c/b/a$1;->a:Lcom/mintegral/msdk/c/b/a;

    invoke-static {v2}, Lcom/mintegral/msdk/c/b/a;->a(Lcom/mintegral/msdk/c/b/a;)V

    .line 186
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 187
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 188
    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/mintegral/msdk/c/b/a$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_1c

    goto :goto_c

    .line 176
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_e
    .end packed-switch
.end method
