.class public abstract Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;
.super Landroid/os/Binder;
.source "ITTAppDownloadListener.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;
    .registers 3

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 p0, 0x0

    return-object p0

    .line 87
    :cond_4
    const-string v0, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    if-eqz v1, :cond_13

    .line 89
    check-cast v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    return-object v0

    .line 91
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;
    .registers 1

    .line 379
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;)Z
    .registers 2

    .line 372
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 373
    sput-object p0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;->a:Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    .line 374
    const/4 p0, 0x1

    return p0

    .line 376
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 95
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    nop

    .line 100
    const/4 v7, 0x1

    const-string v1, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    sparse-switch p1, :sswitch_data_94

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 104
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v7

    .line 174
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    return v7

    .line 161
    :sswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    return v7

    .line 146
    :sswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 155
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    return v7

    .line 131
    :sswitch_53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 140
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    return v7

    .line 116
    :sswitch_6e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 125
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    return v7

    .line 109
    :sswitch_89
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onIdle()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    return v7

    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_89
        0x2 -> :sswitch_6e
        0x3 -> :sswitch_53
        0x4 -> :sswitch_38
        0x5 -> :sswitch_22
        0x6 -> :sswitch_10
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
