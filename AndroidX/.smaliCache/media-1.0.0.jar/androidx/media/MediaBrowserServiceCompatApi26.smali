.class Landroidx/media/MediaBrowserServiceCompatApi26;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;,
        Landroidx/media/MediaBrowserServiceCompatApi26$ResultWrapper;,
        Landroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MBSCompatApi26"

.field static sResultFlags:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    :try_start_0
    const-class v0, Landroid/service/media/MediaBrowserService$Result;

    const-string v1, "mFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/media/MediaBrowserServiceCompatApi26;->sResultFlags:Ljava/lang/reflect/Field;

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_e} :catch_f

    .line 45
    goto :goto_15

    .line 43
    :catch_f
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "MBSCompatApi26"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public static createService(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)Ljava/lang/Object;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceProxy"    # Landroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;

    .line 49
    new-instance v0, Landroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;

    invoke-direct {v0, p0, p1}, Landroidx/media/MediaBrowserServiceCompatApi26$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroidx/media/MediaBrowserServiceCompatApi26$ServiceCompatProxy;)V

    return-object v0
.end method

.method public static getBrowserRootHints(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 2
    .param p0, "serviceObj"    # Ljava/lang/Object;

    .line 57
    move-object v0, p0

    check-cast v0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->getBrowserRootHints()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p0, "serviceObj"    # Ljava/lang/Object;
    .param p1, "parentId"    # Ljava/lang/String;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 53
    move-object v0, p0

    check-cast v0, Landroid/service/media/MediaBrowserService;

    invoke-virtual {v0, p1, p2}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
