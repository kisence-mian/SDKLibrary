.class public final Lcom/mintegral/msdk/video/module/a/a/g;
.super Lcom/mintegral/msdk/video/module/a/a/i;
.source "MiniCardProxyNotifyListener.java"


# instance fields
.field private a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;Lcom/mintegral/msdk/video/module/a/a;)V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0, p2}, Lcom/mintegral/msdk/video/module/a/a/i;-><init>(Lcom/mintegral/msdk/video/module/a/a;)V

    .line 20
    iput-object p1, p0, Lcom/mintegral/msdk/video/module/a/a/g;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    .line 21
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    packed-switch p1, :pswitch_data_28

    .line 42
    :cond_4
    :goto_4
    if-nez v0, :cond_9

    .line 43
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/module/a/a/i;->a(ILjava/lang/Object;)V

    .line 45
    :cond_9
    return-void

    .line 29
    :pswitch_a
    const/16 p1, 0x6b

    .line 30
    goto :goto_4

    .line 33
    :pswitch_d
    const/4 v0, 0x1

    .line 34
    goto :goto_4

    .line 36
    :pswitch_f
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/g;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    if-eqz v1, :cond_4

    .line 37
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/g;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v1}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->webviewshow()V

    .line 38
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/a/a/g;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/a/a/g;->a:Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;

    invoke-virtual {v2}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mintegral/msdk/video/module/MintegralClickMiniCardView;->onSelfConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_4

    .line 27
    :pswitch_data_28
    .packed-switch 0x64
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method
