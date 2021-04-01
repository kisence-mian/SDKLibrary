.class public interface abstract Lcom/kwad/sdk/core/imageloader/cache/disc/DiskCache;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract clear()V
.end method

.method public abstract close()V
.end method

.method public abstract get(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDirectory()Ljava/io/File;
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method

.method public abstract save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
.end method

.method public abstract save(Ljava/lang/String;Ljava/io/InputStream;Lcom/kwad/sdk/core/imageloader/utils/IoUtils$CopyListener;)Z
.end method
