.class public Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;
.super Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;
.source ""


# instance fields
.field private final loadingDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxFileAge:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 10

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;J)V
    .registers 12

    invoke-static {}, Lcom/kwad/sdk/core/imageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;J)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/kwad/sdk/core/imageloader/cache/disc/naming/FileNameGenerator;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->maxFileAge:J

    return-void
.end method

.method private rememberUsage(Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    invoke-super {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;->clear()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 10

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_37

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->maxFileAge:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_39

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    :goto_36
    return-object v2

    :cond_37
    const/4 v1, 0x1

    goto :goto_1f

    :cond_39
    if-nez v1, :cond_36

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->loadingDates:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->rememberUsage(Ljava/lang/String;)V

    return v0
.end method

.method public save(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/BaseDiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/LimitedAgeDiskCache;->rememberUsage(Ljava/lang/String;)V

    return v0
.end method
