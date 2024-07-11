.class public Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;
.super Landroidx/test/espresso/core/internal/deps/aidl/BaseProxy;
.source "IInteractionExecutionStatus.java"

# interfaces
.implements Landroidx/test/espresso/remote/IInteractionExecutionStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 61
    const-string v0, "androidx.test.espresso.remote.IInteractionExecutionStatus"

    invoke-direct {p0, p1, v0}, Landroidx/test/espresso/core/internal/deps/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public canExecute()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/test/espresso/remote/IInteractionExecutionStatus$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroidx/test/espresso/core/internal/deps/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v1

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 70
    return v1
.end method
