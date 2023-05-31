.class final Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;
.super Landroid/os/Handler;
.source "MintegralH5EndCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 154
    :goto_8
    return-void

    .line 145
    :pswitch_9
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    invoke-static {v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->a(Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x7a

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 148
    :cond_1c
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView$1;->a:Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;

    iget-object v0, v0, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x67

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    goto :goto_8

    .line 143
    :pswitch_data_28
    .packed-switch 0x64
        :pswitch_9
    .end packed-switch
.end method
