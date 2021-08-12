.class public final Lcom/kwad/sdk/core/videocache/o;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    invoke-static {p0}, Lcom/kwad/sdk/utils/z;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    const-string v1, "video-cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
