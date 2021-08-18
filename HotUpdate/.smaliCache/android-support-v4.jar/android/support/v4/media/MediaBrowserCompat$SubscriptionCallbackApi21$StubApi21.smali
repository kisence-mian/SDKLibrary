.class Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)V
    .registers 2

    .line 595
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;Landroid/support/v4/media/MediaBrowserCompat$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;
    .param p2, "x1"    # Landroid/support/v4/media/MediaBrowserCompat$1;

    .line 595
    invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;-><init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p1, "parentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .line 598
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    const/4 v0, 0x0

    .line 599
    .local v0, "mediaItems":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    if-eqz p2, :cond_2a

    .line 600
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 601
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

    .line 602
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 603
    sget-object v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 606
    .end local v2    # "parcel":Landroid/os/Parcel;
    goto :goto_d

    .line 608
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->mOptions:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->access$400(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 609
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->mOptions:Landroid/os/Bundle;
    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->access$400(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/media/MediaBrowserCompatUtils;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->mOptions:Landroid/os/Bundle;
    invoke-static {v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->access$400(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_4b

    .line 613
    :cond_46
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 615
    :goto_4b
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4
    .param p1, "parentId"    # Ljava/lang/String;

    .line 619
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->mOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->access$400(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 620
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    # getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->mOptions:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->access$400(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_17

    .line 622
    :cond_12
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallbackApi21;->onError(Ljava/lang/String;)V

    .line 624
    :goto_17
    return-void
.end method
