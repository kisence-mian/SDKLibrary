.class Lcom/facebook/internal/ImageDownloader$RequestKey;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestKey"
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field tag:Ljava/lang/Object;

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/lang/Object;)V
    .registers 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "tag"    # Ljava/lang/Object;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    .line 315
    iput-object p2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    .line 316
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "isEqual":Z
    if-eqz p1, :cond_1a

    instance-of v1, p1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    if-eqz v1, :cond_1a

    .line 333
    move-object v1, p1

    check-cast v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    .line 334
    .local v1, "compareTo":Lcom/facebook/internal/ImageDownloader$RequestKey;
    iget-object v2, v1, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    if-ne v2, v3, :cond_18

    iget-object v2, v1, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    if-ne v2, v3, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    move v0, v2

    .line 337
    .end local v1    # "compareTo":Lcom/facebook/internal/ImageDownloader$RequestKey;
    :cond_1a
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 320
    const/16 v0, 0x1d

    .line 322
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 323
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 325
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
