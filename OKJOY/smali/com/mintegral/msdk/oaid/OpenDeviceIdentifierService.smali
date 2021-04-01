.class public interface abstract Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService;
.super Ljava/lang/Object;
.source "OpenDeviceIdentifierService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/oaid/OpenDeviceIdentifierService$a;
    }
.end annotation


# virtual methods
.method public abstract getOaid()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isOaidTrackLimited()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
