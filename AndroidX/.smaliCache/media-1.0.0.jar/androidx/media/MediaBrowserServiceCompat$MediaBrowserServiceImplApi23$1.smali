.class Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;
.super Landroidx/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->onLoadItem(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media/MediaBrowserServiceCompat$Result<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

.field final synthetic val$resultWrapper:Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Ljava/lang/Object;Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
    .registers 4
    .param p1, "this$1"    # Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
    .param p2, "debug"    # Ljava/lang/Object;

    .line 492
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->this$1:Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;

    iput-object p3, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-direct {p0, p2}, Landroidx/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public detach()V
    .registers 2

    .line 506
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v0}, Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->detach()V

    .line 507
    return-void
.end method

.method onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .registers 4
    .param p1, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 495
    if-nez p1, :cond_9

    .line 496
    iget-object v0, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    goto :goto_16

    .line 498
    :cond_9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, "parcelItem":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 500
    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->val$resultWrapper:Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;

    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompatApi21$ResultWrapper;->sendResult(Ljava/lang/Object;)V

    .line 502
    .end local v0    # "parcelItem":Landroid/os/Parcel;
    :goto_16
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .registers 2

    .line 492
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;->onResultSent(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    return-void
.end method
