.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$1;
.super Landroid/os/Handler;
.source "MTGMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$1;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 412
    if-eqz p1, :cond_7

    .line 413
    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 435
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 415
    :pswitch_8
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$1;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_7

    .line 433
    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 420
    :pswitch_13
    :try_start_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 421
    if-eqz v0, :cond_7

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_7

    .line 422
    check-cast v0, Landroid/view/View;

    .line 423
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$1;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1, v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->a(Lcom/mintegral/msdk/nativex/view/MTGMediaView;Landroid/view/View;)Z

    move-result v0

    .line 424
    if-eqz v0, :cond_7

    .line 425
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$1;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->b(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2a} :catch_e

    goto :goto_7

    .line 413
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_13
    .end packed-switch
.end method
