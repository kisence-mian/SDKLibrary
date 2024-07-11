.class public Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;
.super Landroidx/test/runner/internal/deps/aidl/BaseProxy;
.source "OrchestratorCallback.java"

# interfaces
.implements Landroidx/test/orchestrator/callback/OrchestratorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 81
    const-string v0, "androidx.test.orchestrator.callback.OrchestratorCallback"

    invoke-direct {p0, p1, v0}, Landroidx/test/runner/internal/deps/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public addTest(Ljava/lang/String;)V
    .registers 4
    .param p1, "test"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    .local v0, "data":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method public sendTestNotification(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Landroidx/test/runner/internal/deps/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 95
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroidx/test/orchestrator/callback/OrchestratorCallback$Stub$Proxy;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 96
    return-void
.end method
