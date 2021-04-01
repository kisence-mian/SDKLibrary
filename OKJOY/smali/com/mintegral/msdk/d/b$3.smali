.class final Lcom/mintegral/msdk/d/b$3;
.super Landroid/os/Handler;
.source "ShortCutsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/d/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/d/b;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 699
    iput-object p1, p0, Lcom/mintegral/msdk/d/b$3;->a:Lcom/mintegral/msdk/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 702
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 719
    :cond_5
    :goto_5
    return-void

    .line 705
    :pswitch_6
    :try_start_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 706
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 707
    const/4 v1, 0x0

    .line 708
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_20

    .line 709
    check-cast v0, Ljava/lang/String;

    .line 711
    :goto_11
    iget-object v1, p0, Lcom/mintegral/msdk/d/b$3;->a:Lcom/mintegral/msdk/d/b;

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/d/b;->a(Lcom/mintegral/msdk/d/b;ILjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_5

    .line 712
    :catch_17
    move-exception v0

    .line 713
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 714
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_20
    move-object v0, v1

    goto :goto_11

    .line 702
    :pswitch_data_22
    .packed-switch 0x2710
        :pswitch_6
    .end packed-switch
.end method
