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

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.bytedance.sdk.openadsdk.ICommonDialogListener"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;
    .registers 3

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.ICommonDialogListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
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

    .line 40
    const-string v1, "com.bytedance.sdk.openadsdk.ICommonDialogListener"

    .line 41
    sparse-switch p1, :sswitch_data_2e

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 45
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->onDialogBtnYes()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 57
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->onDialogBtnNo()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 64
    :sswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->onDialogCancel()V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 41
    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_19
        0x3 -> :sswitch_23
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
