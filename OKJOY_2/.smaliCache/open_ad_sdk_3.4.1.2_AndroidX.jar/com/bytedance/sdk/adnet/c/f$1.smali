.class Lcom/bytedance/sdk/adnet/c/f$1;
.super Landroid/os/Handler;
.source "TNCManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/c/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/c/f;Landroid/os/Looper;)V
    .registers 3

    .line 443
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/c/f$1;->a:Lcom/bytedance/sdk/adnet/c/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 446
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    goto :goto_13

    .line 448
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    const/4 p1, 0x1

    .line 449
    :goto_d
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/c/f$1;->a:Lcom/bytedance/sdk/adnet/c/f;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Lcom/bytedance/sdk/adnet/c/f;Z)V

    .line 450
    nop

    .line 454
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x2710
        :pswitch_6
    .end packed-switch
.end method
