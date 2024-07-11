.class public final Lcom/kwad/sdk/core/imageloader/utils/DiskCacheUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findInCache(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;)Ljava/io/File;
    .registers 2

    invoke-interface {p1, p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public static removeFromCache(Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;)Z
    .registers 2

    invoke-interface {p1, p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
