.class public abstract Landroidx/test/runner/internal/deps/aidl/BaseProxy;
.super Ljava/lang/Object;
.source "BaseProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final mDescriptor:Ljava/lang/String;

.field private final mRemote:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;
    .param p2, "descriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "remote",
            "descriptor"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroidx/test/runner/internal/deps/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    .line 20
    iput-object p2, p0, Landroidx/test/runner/internal/deps/aidl/BaseProxy;->mDescriptor:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 25
    iget-object v0, p0, Landroidx/test/runner/internal/deps/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method protected obtainAndWriteInterfaceToken()Landroid/os/Parcel;
    .registers 3

    .line 29
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 30
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Landroidx/test/runner/internal/deps/aidl/BaseProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 31
    return-object v0
.end method

.method protected transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .registers 6
    .param p1, "code"    # I
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 45
    .local v0, "out":Landroid/os/Parcel;
    :try_start_4
    iget-object v1, p0, Landroidx/test/runner/internal/deps/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 52
    nop

    .line 53
    return-object v0

    .line 51
    :catchall_12
    move-exception v1

    goto :goto_1a

    .line 47
    :catch_14
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_15
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    nop

    .end local v0    # "out":Landroid/os/Parcel;
    .end local p1    # "code":I
    .end local p2    # "in":Landroid/os/Parcel;
    throw v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    .line 51
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "out":Landroid/os/Parcel;
    .restart local p1    # "code":I
    .restart local p2    # "in":Landroid/os/Parcel;
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method protected transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 65
    .local v0, "out":Landroid/os/Parcel;
    :try_start_4
    iget-object v1, p0, Landroidx/test/runner/internal/deps/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 66
    invoke-virtual {v0}, Landroid/os/Parcel;->readException()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_15

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catchall_15
    move-exception v1

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 69
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method protected transactOneway(ILandroid/os/Parcel;)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    :try_start_0
    iget-object v0, p0, Landroidx/test/runner/internal/deps/aidl/BaseProxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_c

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    .line 83
    nop

    .line 84
    return-void

    .line 82
    :catchall_c
    move-exception v0

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
