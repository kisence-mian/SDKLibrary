.class public abstract Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;
.super Landroid/os/Binder;
.source "IListenerManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/IListenerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/IListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .registers 3

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Lcom/bytedance/sdk/openadsdk/IListenerManager;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 42
    const-string v0, "com.bytedance.sdk.openadsdk.IListenerManager"

    .line 43
    sparse-switch p1, :sswitch_data_116

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    :goto_a
    return v10

    .line 47
    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 52
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->registerRewardVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IRewardAdInteractionListener;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 63
    :sswitch_25
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47

    move v3, v10

    .line 71
    :goto_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 74
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->executeRewardVideoCallback(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 69
    :cond_47
    const/4 v3, 0x0

    goto :goto_37

    .line 80
    :sswitch_49
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;

    move-result-object v1

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->registerFullVideoListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/IFullScreenVideoAdInteractionListener;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 91
    :sswitch_5f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->executeFullVideoCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 102
    :sswitch_71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->registerTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 113
    :sswitch_87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->unregisterTTAppDownloadListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 124
    :sswitch_9e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    .line 137
    invoke-virtual/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->executeAppDownloadCallback(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 143
    :sswitch_c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ICommonDialogListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;

    move-result-object v1

    .line 148
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->registerDialogListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonDialogListener;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 154
    :sswitch_d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->broadcastDialogListener(Ljava/lang/String;I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 165
    :sswitch_ec
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;

    move-result-object v1

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 176
    :sswitch_103
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 43
    :sswitch_data_116
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_25
        0x3 -> :sswitch_49
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_71
        0x6 -> :sswitch_87
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_d9
        0xa -> :sswitch_ec
        0xb -> :sswitch_103
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
