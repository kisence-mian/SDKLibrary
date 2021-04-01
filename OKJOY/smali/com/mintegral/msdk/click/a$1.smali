.class final Lcom/mintegral/msdk/click/a$1;
.super Landroid/os/Handler;
.source "CommonClickControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$1;->a:Lcom/mintegral/msdk/click/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 161
    :cond_8
    :goto_8
    return-void

    .line 134
    :pswitch_9
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$1;->a:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 135
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$1;->a:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V

    goto :goto_8

    .line 139
    :pswitch_1c
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$1;->a:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 140
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$1;->a:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDownloadProgress(I)V

    goto :goto_8

    .line 144
    :pswitch_30
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$1;->a:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 145
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$1;->a:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mintegral/msdk/out/Campaign;

    invoke-interface {v1, v0}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V

    goto :goto_8

    .line 132
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1c
        :pswitch_30
    .end packed-switch
.end method
