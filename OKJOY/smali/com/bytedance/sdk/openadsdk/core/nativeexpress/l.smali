.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.super Ljava/lang/Object;
.source "TTNativeExpressAdStub.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;


# instance fields
.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public getExpressAdView()Landroid/view/View;
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterWords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageMode()I
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getInteractionType()I
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoModel()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public render()V
    .registers 1

    .prologue
    .line 62
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .registers 2

    .prologue
    .line 97
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback;)V
    .registers 3

    .prologue
    .line 72
    return-void
.end method

.method public setDislikeDialog(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .registers 2

    .prologue
    .line 77
    return-void
.end method

.method public setDownloadListener(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 2

    .prologue
    .line 52
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;)V
    .registers 2

    .prologue
    .line 47
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V
    .registers 2

    .prologue
    .line 42
    return-void
.end method

.method public setSlideIntervalTime(I)V
    .registers 2

    .prologue
    .line 87
    return-void
.end method

.method public setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressVideoAdListener;)V
    .registers 2

    .prologue
    .line 92
    return-void
.end method

.method public showInteractionExpressAd(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 82
    return-void
.end method
