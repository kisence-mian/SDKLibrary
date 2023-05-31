.class final Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;
.super Ljava/lang/Object;
.source "MTGMediaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;)V
    .registers 2

    .prologue
    .line 2872
    iput-object p1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 2876
    :try_start_0
    const-string v0, "MTGMediaView"

    const-string v1, "onSensorChanged: is portrait: |||||||||||||||||"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Landroid/content/Context;)Lcom/mintegral/msdk/nativex/view/mtgfullview/a;

    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->w(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v1, v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/a;->a(Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;Z)V

    .line 2878
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->K(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 2879
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->G(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 2880
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->H(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 2881
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->I(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)V

    .line 2882
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 2883
    const-string v0, "MTGMediaView"

    const-string v1, "=====orientation|||||"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v0, v0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v0}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->y(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e$2;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;

    iget-object v1, v1, Lcom/mintegral/msdk/nativex/view/MTGMediaView$e;->a:Lcom/mintegral/msdk/nativex/view/MTGMediaView;

    invoke-static {v1}, Lcom/mintegral/msdk/nativex/view/MTGMediaView;->z(Lcom/mintegral/msdk/nativex/view/MTGMediaView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/nativex/view/WindVaneWebViewForNV;->orientation(Z)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    .line 2889
    :cond_65
    :goto_65
    return-void

    .line 2887
    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65
.end method
