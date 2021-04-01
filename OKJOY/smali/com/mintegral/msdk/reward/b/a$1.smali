.class final Lcom/mintegral/msdk/reward/b/a$1;
.super Landroid/os/Handler;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/reward/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/reward/b/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/reward/b/a;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    .line 186
    sparse-switch v0, :sswitch_data_ac

    .line 233
    :cond_5
    :goto_5
    return-void

    .line 188
    :sswitch_6
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/reward/b/a;->c(Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 189
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/b/a;->b(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a$c;->a(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    goto :goto_5

    .line 193
    :cond_27
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->a(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/reward/b/a$c;

    move-result-object v0

    const-string v1, "load timeout"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/reward/b/a$c;->b(Lcom/mintegral/msdk/reward/b/a$c;Ljava/lang/String;)V

    goto :goto_5

    .line 200
    :sswitch_3b
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 201
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    const-string v0, ""

    .line 203
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4f

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_4f
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadSuccess(Ljava/lang/String;)V

    goto :goto_5

    .line 210
    :sswitch_59
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 211
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 212
    const-string v0, ""

    .line 213
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_6d

    .line 214
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_6d
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/b/a;->d(Lcom/mintegral/msdk/reward/b/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v2}, Lcom/mintegral/msdk/reward/b/a;->b(Lcom/mintegral/msdk/reward/b/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v3}, Lcom/mintegral/msdk/reward/b/a;->e(Lcom/mintegral/msdk/reward/b/a;)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/mintegral/msdk/reward/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onVideoLoadFail(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 221
    :sswitch_8d
    iget-object v0, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v0}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 222
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 223
    const-string v0, ""

    .line 224
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_a1

    .line 225
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_a1
    iget-object v1, p0, Lcom/mintegral/msdk/reward/b/a$1;->a:Lcom/mintegral/msdk/reward/b/a;

    invoke-static {v1}, Lcom/mintegral/msdk/reward/b/a;->c(Lcom/mintegral/msdk/reward/b/a;)Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/videocommon/listener/InterVideoOutListener;->onLoadSuccess(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 186
    :sswitch_data_ac
    .sparse-switch
        0x8 -> :sswitch_6
        0x9 -> :sswitch_3b
        0x10 -> :sswitch_59
        0x11 -> :sswitch_8d
    .end sparse-switch
.end method
