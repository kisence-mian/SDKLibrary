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

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-virtual {p0, p0, v0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;
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
    const-string v0, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 40
    const-string v1, "com.bytedance.sdk.openadsdk.ITTAppDownloadListener"

    .line 41
    sparse-switch p1, :sswitch_data_94

    .line 126
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
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onIdle()V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 57
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 72
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 81
    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 87
    :sswitch_4f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 102
    :sswitch_6a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 115
    :sswitch_80
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ITTAppDownloadListener$Stub;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 41
    nop

    :sswitch_data_94
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_19
        0x3 -> :sswitch_34
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_80
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
