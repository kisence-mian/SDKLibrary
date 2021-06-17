.class Lcom/umeng/analytics/pro/a$a$a;
.super Ljava/lang/Object;
.source "IDeviceIdService.java"

# interfaces
.implements Lcom/umeng/analytics/pro/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/umeng/analytics/pro/a$a$a;->a:Landroid/os/IBinder;

    .line 82
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 97
    :try_start_8
    const-string v2, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/umeng/analytics/pro/a$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 100
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    nop

    .line 106
    return-object v2

    .line 103
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 114
    :try_start_8
    const-string v2, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/umeng/analytics/pro/a$a$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 123
    nop

    .line 124
    return-object p1

    .line 121
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/umeng/analytics/pro/a$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 89
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 132
    :try_start_8
    const-string v2, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/umeng/analytics/pro/a$a$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    nop

    .line 142
    return-object p1

    .line 139
    :catchall_26
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 140
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
