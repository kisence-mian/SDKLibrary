.class public interface abstract Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;
.super Ljava/lang/Object;
.source "NativeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/out/NativeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NativeTrackingListener"
.end annotation


# virtual methods
.method public abstract onDismissLoading(Lcom/mintegral/msdk/out/Campaign;)V
.end method

.method public abstract onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V
.end method

.method public abstract onFinishRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
.end method

.method public abstract onInterceptDefaultLoadingDialog()Z
.end method

.method public abstract onRedirectionFailed(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
.end method

.method public abstract onShowLoading(Lcom/mintegral/msdk/out/Campaign;)V
.end method

.method public abstract onStartRedirection(Lcom/mintegral/msdk/out/Campaign;Ljava/lang/String;)V
.end method
