.class public abstract Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;
.super Landroid/os/Binder;
.source "IRewardAdInteractionListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;
    .registers 3

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 41
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    .line 42
    sparse-switch p1, :sswitch_data_70

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 46
    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 51
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onDestroy()V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 58
    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onAdShow()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 65
    :sswitch_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onAdVideoBarClick()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 72
    :sswitch_2d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onAdClose()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 79
    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onVideoComplete()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 86
    :sswitch_41
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onVideoError()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 93
    :sswitch_4b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_64

    move v0, v1

    .line 97
    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {p0, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onRewardVerify(ZILjava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 95
    :cond_64
    const/4 v0, 0x0

    goto :goto_55

    .line 106
    :sswitch_66
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onSkippedVideo()V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 42
    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_19
        0x3 -> :sswitch_23
        0x4 -> :sswitch_2d
        0x5 -> :sswitch_37
        0x6 -> :sswitch_41
        0x7 -> :sswitch_4b
        0x8 -> :sswitch_66
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
