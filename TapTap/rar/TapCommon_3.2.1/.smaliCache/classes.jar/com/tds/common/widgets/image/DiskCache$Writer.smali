.class public interface abstract Lcom/tds/common/widgets/image/DiskCache$Writer;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/image/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Writer"
.end annotation


# virtual methods
.method public abstract write(Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
