.class public abstract Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;
.super Landroid/os/Binder;
.source "IBinderPool.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IBinderPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IBinderPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.bytedance.sdk.openadsdk.IBinderPool"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 3

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.IBinderPool"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-eqz v1, :cond_13

    .line 44
    check-cast v0, Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object v0

    .line 46
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IBinderPool;
    .registers 1

    .line 128
    sget-object v0, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/bytedance/sdk/openadsdk/IBinderPool;)Z
    .registers 2

    .line 121
    sget-object v0, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 122
    sput-object p0, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IBinderPool;

    .line 123
    const/4 p0, 0x1

    return p0

    .line 125
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 50
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    nop

    .line 55
    const/4 v0, 0x1

    const-string v1, "com.bytedance.sdk.openadsdk.IBinderPool"

    sparse-switch p1, :sswitch_data_22

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 59
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v0

    .line 64
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 67
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/IBinderPool$Stub;->queryBinder(I)Landroid/os/IBinder;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 70
    return v0

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
