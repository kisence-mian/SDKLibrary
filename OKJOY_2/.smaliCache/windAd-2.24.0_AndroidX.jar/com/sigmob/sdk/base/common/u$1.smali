.class Lcom/sigmob/sdk/base/common/u$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/base/common/u;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/common/u;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/base/common/u;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/u$1;->a:Lcom/sigmob/sdk/base/common/u;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_e

    :pswitch_9
    iget-object p1, p0, Lcom/sigmob/sdk/base/common/u$1;->a:Lcom/sigmob/sdk/base/common/u;

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/u;->a()V

    :goto_e
    return-void

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
