.class final Lcom/mintegral/msdk/click/a$2;
.super Landroid/os/Handler;
.source "CommonClickControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .prologue
    .line 1704
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 1708
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1709
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 1722
    :cond_8
    :goto_8
    return-void

    .line 1711
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1712
    if-eqz v0, :cond_8

    instance-of v1, v0, Landroid/content/Context;

    if-eqz v1, :cond_8

    .line 1713
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Landroid/content/Context;)V

    goto :goto_8

    .line 1717
    :pswitch_17
    invoke-static {}, Lcom/mintegral/msdk/click/a;->d()V

    goto :goto_8

    .line 1709
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_17
    .end packed-switch
.end method
