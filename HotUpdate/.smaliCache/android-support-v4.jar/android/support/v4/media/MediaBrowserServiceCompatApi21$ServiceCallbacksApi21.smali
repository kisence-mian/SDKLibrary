.class public Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi21.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCallbacksApi21"
.end annotation


# static fields
.field private static sNullParceledListSliceObj:Ljava/lang/Object;


# instance fields
.field private final mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 64
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    const-string v1, "android.support.v4.media.MediaBrowserCompat.NULL_MEDIA_ITEM"

    invoke-virtual {v0, v1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    .line 66
    .local v0, "nullDescription":Landroid/media/MediaDescription;
    new-instance v1, Landroid/media/browse/MediaBrowser$MediaItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/media/MediaDescription;I)V

    .line 67
    .local v1, "nullMediaItem":Landroid/media/browse/MediaBrowser$MediaItem;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "nullMediaItemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v2}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSliceObj:Ljava/lang/Object;

    .line 70
    .end local v0    # "nullDescription":Landroid/media/MediaDescription;
    .end local v1    # "nullMediaItem":Landroid/media/browse/MediaBrowser$MediaItem;
    .end local v2    # "nullMediaItemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "callbacksObj"    # Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-direct {v0, p1}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    .line 76
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "root"    # Ljava/lang/String;
    .param p2, "session"    # Ljava/lang/Object;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onConnect(Ljava/lang/String;Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 84
    return-void
.end method

.method public onConnectFailed()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v0}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onConnectFailed()V

    .line 88
    return-void
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "mediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    const/4 v0, 0x0

    .line 92
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Landroid/media/browse/MediaBrowser$MediaItem;>;"
    if-eqz p2, :cond_2a

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 94
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcel;

    .line 95
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    sget-object v3, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 98
    .end local v2    # "parcel":Landroid/os/Parcel;
    goto :goto_d

    .line 101
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_39

    .line 102
    if-nez v0, :cond_34

    const/4 v1, 0x0

    goto :goto_38

    :cond_34
    invoke-static {v0}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "pls":Ljava/lang/Object;
    :goto_38
    goto :goto_42

    .line 104
    .end local v1    # "pls":Ljava/lang/Object;
    :cond_39
    if-nez v0, :cond_3e

    sget-object v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->sNullParceledListSliceObj:Ljava/lang/Object;

    goto :goto_42

    :cond_3e
    invoke-static {v0}, Landroid/support/v4/media/ParceledListSliceAdapterApi21;->newInstance(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .restart local v1    # "pls":Ljava/lang/Object;
    :goto_42
    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCallbacksApi21;->mCallbacks:Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/media/IMediaBrowserServiceCallbacksAdapterApi21;->onLoadChildren(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method
