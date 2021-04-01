.class public Lcom/androidquery/util/BitmapCache;
.super Ljava/util/LinkedHashMap;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxCount:I

.field private maxPixels:I

.field private maxTotalPixels:I

.field private pixels:I


# direct methods
.method public constructor <init>(III)V
    .registers 7
    .param p1, "mc"    # I
    .param p2, "mp"    # I
    .param p3, "mtp"    # I

    .prologue
    .line 41
    const/16 v0, 0x8

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 43
    iput p1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    .line 44
    iput p2, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    .line 45
    iput p3, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    .line 47
    return-void
.end method

.method private pixels(Landroid/graphics/Bitmap;)I
    .registers 4
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 93
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 94
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_3
.end method

.method private shrink()V
    .registers 4

    .prologue
    .line 99
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-le v1, v2, :cond_14

    .line 101
    invoke-virtual {p0}, Lcom/androidquery/util/BitmapCache;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    .line 116
    .end local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_14
    :goto_14
    return-void

    .line 105
    .restart local v0    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 108
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-gt v1, v2, :cond_e

    goto :goto_14
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 90
    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "old":Landroid/graphics/Bitmap;
    invoke-direct {p0, p2}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 55
    .local v1, "px":I
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->maxPixels:I

    if-gt v1, v2, :cond_1f

    .line 56
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 57
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "old":Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 58
    .restart local v0    # "old":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1f

    .line 59
    iget v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-direct {p0, v0}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 69
    :cond_1f
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/util/BitmapCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 77
    .local v0, "old":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_11

    .line 78
    iget v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    invoke-direct {p0, v0}, Lcom/androidquery/util/BitmapCache;->pixels(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    .line 83
    :cond_11
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget v0, p0, Lcom/androidquery/util/BitmapCache;->pixels:I

    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxTotalPixels:I

    if-gt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/androidquery/util/BitmapCache;->size()I

    move-result v0

    iget v1, p0, Lcom/androidquery/util/BitmapCache;->maxCount:I

    if-le v0, v1, :cond_15

    .line 131
    :cond_e
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/util/BitmapCache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    .line 136
    :cond_15
    invoke-direct {p0}, Lcom/androidquery/util/BitmapCache;->shrink()V

    .line 138
    const/4 v0, 0x0

    return v0
.end method
