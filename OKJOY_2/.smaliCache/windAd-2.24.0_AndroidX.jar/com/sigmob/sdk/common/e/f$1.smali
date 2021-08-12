.class final Lcom/sigmob/sdk/common/e/f$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/common/e/f;->f(Landroid/content/Context;)Lcom/sigmob/volley/toolbox/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 3

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    return p1

    :cond_c
    const/4 p2, 0x0

    invoke-super {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/sigmob/sdk/common/e/f$1;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
