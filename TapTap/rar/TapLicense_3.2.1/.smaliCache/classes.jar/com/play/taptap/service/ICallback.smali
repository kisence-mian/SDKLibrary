.class public interface abstract Lcom/play/taptap/service/ICallback;
.super Ljava/lang/Object;
.source "ICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/play/taptap/service/ICallback$Stub;,
        Lcom/play/taptap/service/ICallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onResultBack(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
