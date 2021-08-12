.class public interface abstract Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;
.super Ljava/lang/Object;
.source "IFullScreenVideoAdInteractionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener$Stub;,
        Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onAdClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAdShow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAdVideoBarClick()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDestroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSkippedVideo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVideoComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
