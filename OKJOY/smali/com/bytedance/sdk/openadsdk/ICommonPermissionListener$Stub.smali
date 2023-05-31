.class public abstract Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;
.super Landroid/os/Binder;
.source "ICommonPermissionListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.bytedance.sdk.openadsdk.ICommonPermissionListener"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;
    .registers 3

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.ICommonPermissionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 43
    const-string v1, "com.bytedance.sdk.openadsdk.ICommonPermissionListener"

    .line 44
    sparse-switch p1, :sswitch_data_28

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 48
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 53
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;->onGranted()V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 60
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;->onDenied(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 44
    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_19
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
