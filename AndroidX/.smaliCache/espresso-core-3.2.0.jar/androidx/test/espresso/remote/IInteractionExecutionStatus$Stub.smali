.class public abstract Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub;
.super Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;
.source "IInteractionExecutionStatus.java"

# interfaces
.implements Landroidx/test/espresso/remote/IInteractionExecutionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/remote/IInteractionExecutionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.test.espresso.remote.IInteractionExecutionStatus"

.field static final TRANSACTION_canExecute:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    const-string v0, "androidx.test.espresso.remote.IInteractionExecutionStatus"

    invoke-direct {p0, v0}, Landroidx/test/espresso/core/internal/deps/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/test/espresso/remote/IInteractionExecutionStatus;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_4
    const-string v0, "androidx.test.espresso.remote.IInteractionExecutionStatus"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    instance-of v1, v0, Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    if-eqz v1, :cond_11

    .line 41
    check-cast v0, Landroidx/test/espresso/remote/IInteractionExecutionStatus;

    return-object v0

    .line 43
    :cond_11
    new-instance v0, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 p2, 0x1

    if-ne p1, p2, :cond_e

    .line 50
    invoke-virtual {p0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub;->canExecute()Z

    move-result p1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-static {p3, p1}, Landroidx/test/espresso/core/internal/deps/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 53
    return p2

    .line 55
    :cond_e
    const/4 p1, 0x0

    return p1
.end method
