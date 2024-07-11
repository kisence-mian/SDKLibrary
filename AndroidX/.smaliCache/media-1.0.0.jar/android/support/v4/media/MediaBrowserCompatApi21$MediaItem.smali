.class Landroid/support/v4/media/MediaBrowserCompatApi21$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaItem"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "itemObj"    # Ljava/lang/Object;

    .line 149
    move-object v0, p0

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getFlags(Ljava/lang/Object;)I
    .registers 2
    .param p0, "itemObj"    # Ljava/lang/Object;

    .line 145
    move-object v0, p0

    check-cast v0, Landroid/media/browse/MediaBrowser$MediaItem;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser$MediaItem;->getFlags()I

    move-result v0

    return v0
.end method
