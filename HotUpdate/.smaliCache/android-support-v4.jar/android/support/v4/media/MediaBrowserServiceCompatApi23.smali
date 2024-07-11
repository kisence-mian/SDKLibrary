.class Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21;
.source "MediaBrowserServiceCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ItemCallback;,
        Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaBrowserServiceCompatApi21"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;-><init>()V

    .line 45
    return-void
.end method

.method public static createService()Ljava/lang/Object;
    .registers 1

    .line 30
    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;

    invoke-direct {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;-><init>()V

    return-object v0
.end method

.method public static onCreate(Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V
    .registers 3
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "serviceImpl"    # Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;

    .line 34
    move-object v0, p0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptorApi23;->onCreate(Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceImplApi23;)V

    .line 35
    return-void
.end method
