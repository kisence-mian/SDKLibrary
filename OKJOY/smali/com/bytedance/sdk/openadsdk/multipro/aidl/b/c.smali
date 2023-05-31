.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;
.super Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener$Stub;
.source "FullScreenVideoListenerImpl.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener$Stub;-><init>()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b:Landroid/os/Handler;

    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->a:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 21
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->a:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->a:Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd$FullScreenVideoAdInteractionListener;

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method private b()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b:Landroid/os/Handler;

    if-nez v0, :cond_10

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b:Landroid/os/Handler;

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b:Landroid/os/Handler;

    goto :goto_f
.end method


# virtual methods
.method public onAdClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    return-void
.end method

.method public onAdShow()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
.end method

.method public onAdVideoBarClick()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public onDestroy()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->a()V

    .line 35
    return-void
.end method

.method public onSkippedVideo()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$5;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public onVideoComplete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c$4;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method
