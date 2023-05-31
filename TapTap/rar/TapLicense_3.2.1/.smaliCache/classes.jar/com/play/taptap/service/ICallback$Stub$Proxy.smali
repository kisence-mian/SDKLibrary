.class Lcom/play/taptap/service/ICallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICallback.java"

# interfaces
.implements Lcom/play/taptap/service/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/play/taptap/service/ICallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/play/taptap/service/ICallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/play/taptap/service/ICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/play/taptap/service/ICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "com.play.taptap.service.ICallback"

    return-object v0
.end method

.method public onResultBack(I)V
    .registers 7
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 89
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 91
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.play.taptap.service.ICallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v2, p0, Lcom/play/taptap/service/ICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 94
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/play/taptap/service/ICallback$Stub;->getDefaultImpl()Lcom/play/taptap/service/ICallback;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 95
    invoke-static {}, Lcom/play/taptap/service/ICallback$Stub;->getDefaultImpl()Lcom/play/taptap/service/ICallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/play/taptap/service/ICallback;->onResultBack(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 101
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    return-void

    .line 98
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 101
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    nop

    .line 104
    return-void

    .line 101
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 103
    throw v2
.end method
