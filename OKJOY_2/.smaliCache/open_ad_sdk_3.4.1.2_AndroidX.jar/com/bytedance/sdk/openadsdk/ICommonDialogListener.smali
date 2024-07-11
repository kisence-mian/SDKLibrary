.class public interface abstract Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;
.super Ljava/lang/Object;
.source "ICommonDialogListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;,
        Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onDialogBtnNo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDialogBtnYes()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDialogCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
