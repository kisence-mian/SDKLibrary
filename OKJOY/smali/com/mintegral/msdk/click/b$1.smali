.class final Lcom/mintegral/msdk/click/b$1;
.super Landroid/os/Handler;
.source "CommonClickUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    :try_start_3
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 138
    :cond_8
    :goto_8
    return-void

    .line 121
    :pswitch_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 122
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 124
    const-string v1, ""

    .line 125
    const-string v0, ""

    .line 126
    if-eqz v4, :cond_23

    .line 127
    const-string v0, "rid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    const-string v0, "cid"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_23
    new-instance v4, Lcom/mintegral/msdk/base/common/e/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mintegral/msdk/base/common/e/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/mintegral/msdk/base/common/e/b;->a(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_33} :catch_34

    goto :goto_8

    .line 133
    :catch_34
    move-exception v0

    .line 134
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 119
    nop

    :pswitch_data_3e
    .packed-switch 0x3e8
        :pswitch_9
    .end packed-switch
.end method
