.class abstract Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceAdapterApi21.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Stub"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.media.IMediaBrowserService"

.field private static final TRANSACTION_addSubscription:I = 0x3

.field private static final TRANSACTION_connect:I = 0x1

.field private static final TRANSACTION_disconnect:I = 0x2

.field private static final TRANSACTION_getMediaItem:I = 0x5

.field private static final TRANSACTION_removeSubscription:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.service.media.IMediaBrowserService"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method


# virtual methods
.method public abstract addSubscription(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 48
    return-object p0
.end method

.method public abstract connect(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public abstract disconnect(Ljava/lang/Object;)V
.end method

.method public abstract getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x1

    const-string v1, "android.service.media.IMediaBrowserService"

    sparse-switch p1, :sswitch_data_82

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 56
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v0

    .line 97
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 101
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .local v2, "arg1":Landroid/os/ResultReceiver;
    goto :goto_26

    .line 103
    .end local v2    # "arg1":Landroid/os/ResultReceiver;
    :cond_25
    const/4 v2, 0x0

    .line 105
    .restart local v2    # "arg1":Landroid/os/ResultReceiver;
    :goto_26
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 106
    return v0

    .line 89
    .end local v1    # "arg0":Ljava/lang/String;
    .end local v2    # "arg1":Landroid/os/ResultReceiver;
    :sswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .restart local v1    # "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    .line 93
    .local v2, "arg1":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;->removeSubscription(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    return v0

    .line 81
    .end local v1    # "arg0":Ljava/lang/String;
    .end local v2    # "arg1":Ljava/lang/Object;
    :sswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .restart local v1    # "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    .restart local v2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;->addSubscription(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return v0

    .line 74
    .end local v1    # "arg0":Ljava/lang/String;
    .end local v2    # "arg1":Ljava/lang/Object;
    :sswitch_50
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "arg0":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;->disconnect(Ljava/lang/Object;)V

    .line 78
    return v0

    .line 60
    .end local v1    # "arg0":Ljava/lang/Object;
    :sswitch_5f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_75

    .line 64
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "arg1":Landroid/os/Bundle;
    goto :goto_76

    .line 66
    .end local v2    # "arg1":Landroid/os/Bundle;
    :cond_75
    const/4 v2, 0x0

    .line 68
    .restart local v2    # "arg1":Landroid/os/Bundle;
    :goto_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21$Stub;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, "arg2":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/media/IMediaBrowserServiceAdapterApi21$Stub;->connect(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 71
    return v0

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_5f
        0x2 -> :sswitch_50
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_2a
        0x5 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method

.method public abstract removeSubscription(Ljava/lang/String;Ljava/lang/Object;)V
.end method
