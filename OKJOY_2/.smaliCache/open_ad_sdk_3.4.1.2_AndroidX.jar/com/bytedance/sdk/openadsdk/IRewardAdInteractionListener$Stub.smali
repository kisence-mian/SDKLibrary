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

    .line 76
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 77
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;
    .registers 3

    .line 85
    if-nez p0, :cond_4

    .line 86
    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;
    .registers 1

    .line 390
    sget-object v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)Z
    .registers 2

    .line 383
    sget-object v0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 384
    sput-object p0, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    .line 385
    const/4 p0, 0x1

    return p0

    .line 387
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 96
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    nop

    .line 101
    const/4 v0, 0x1

    const-string v1, "com.bytedance.sdk.openadsdk.IRewardAdInteractionListener"

    sparse-switch p1, :sswitch_data_7c

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 105
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v0

    .line 169
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onSkippedVideo()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    return v0

    .line 152
    :sswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    move v2, v0

    goto :goto_27

    :cond_25
    const/4 p1, 0x0

    move v2, p1

    .line 156
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 163
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onRewardVerify(ZILjava/lang/String;ILjava/lang/String;)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v0

    .line 145
    :sswitch_3f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onVideoError()V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v0

    .line 138
    :sswitch_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onVideoComplete()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    return v0

    .line 131
    :sswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onAdClose()V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    return v0

    .line 124
    :sswitch_5d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onAdVideoBarClick()V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v0

    .line 117
    :sswitch_67
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onAdShow()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    return v0

    .line 110
    :sswitch_71
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->onDestroy()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_71
        0x2 -> :sswitch_67
        0x3 -> :sswitch_5d
        0x4 -> :sswitch_53
        0x5 -> :sswitch_49
        0x6 -> :sswitch_3f
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
