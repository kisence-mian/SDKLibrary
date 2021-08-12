.class Lcom/bytedance/embedapplog/cl$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/embedapplog/cl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embedapplog/cl$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/bytedance/embedapplog/cl$a$a;->a:Landroid/os/IBinder;

    .line 77
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 94
    :try_start_8
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/bytedance/embedapplog/cl$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 96
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 99
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 101
    nop

    .line 102
    return-object v2

    .line 99
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/bytedance/embedapplog/cl$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Z
    .registers 6

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 114
    :try_start_8
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/bytedance/embedapplog/cl$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 117
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_26

    if-eqz v2, :cond_1e

    const/4 v4, 0x1

    .line 119
    :cond_1e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    nop

    .line 122
    return v4

    .line 119
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
