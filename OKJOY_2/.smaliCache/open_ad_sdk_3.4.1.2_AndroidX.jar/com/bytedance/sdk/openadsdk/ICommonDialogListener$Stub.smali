.class public abstract Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;
.super Landroid/os/Binder;
.source "ICommonDialogListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.bytedance.sdk.openadsdk.ICommonDialogListener"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;
    .registers 3

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.ICommonDialogListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    if-eqz v1, :cond_13

    .line 46
    check-cast v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    return-object v0

    .line 48
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;
    .registers 1

    .line 173
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)Z
    .registers 2

    .line 166
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 167
    sput-object p0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    .line 168
    const/4 p0, 0x1

    return p0

    .line 170
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    nop

    .line 57
    const/4 v0, 0x1

    const-string v1, "com.bytedance.sdk.openadsdk.ICommonDialogListener"

    sparse-switch p1, :sswitch_data_2e

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 61
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v0

    .line 80
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->onDialogCancel()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    return v0

    .line 73
    :sswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->onDialogBtnNo()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v0

    .line 66
    :sswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->onDialogBtnYes()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v0

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
