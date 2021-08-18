.class public abstract Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;
    }
.end annotation


# instance fields
.field final mItemCallbackObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_16

    .line 636
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/support/v4/media/MediaBrowserCompat$1;)V

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi23;->createItemCallback(Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackObj:Ljava/lang/Object;

    goto :goto_18

    .line 638
    :cond_16
    iput-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackObj:Ljava/lang/Object;

    .line 640
    :goto_18
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 656
    return-void
.end method

.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
    .registers 2
    .param p1, "item"    # Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 648
    return-void
.end method
