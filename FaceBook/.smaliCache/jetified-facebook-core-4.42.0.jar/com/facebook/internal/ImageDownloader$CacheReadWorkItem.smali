.class Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheReadWorkItem"
.end annotation


# instance fields
.field private allowCachedRedirects:Z

.field private context:Landroid/content/Context;

.field private key:Lcom/facebook/internal/ImageDownloader$RequestKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p3, "allowCachedRedirects"    # Z

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    .line 354
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 355
    iput-boolean p3, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    .line 356
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v1, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    # invokes: Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/ImageDownloader;->access$100(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    .line 361
    return-void
.end method
