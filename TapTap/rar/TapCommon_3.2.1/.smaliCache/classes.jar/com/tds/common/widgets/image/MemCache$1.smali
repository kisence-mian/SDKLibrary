.class Lcom/tds/common/widgets/image/MemCache$1;
.super Landroid/util/LruCache;
.source "MemCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/common/widgets/image/MemCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/image/MemCache;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/image/MemCache;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/MemCache;
    .param p2, "x0"    # I

    .line 12
    iput-object p1, p0, Lcom/tds/common/widgets/image/MemCache$1;->this$0:Lcom/tds/common/widgets/image/MemCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 25
    invoke-super {p0, p1}, Landroid/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tds/common/widgets/image/MemCache$1;->create(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 12
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tds/common/widgets/image/MemCache$1;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "evicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "oldValue"    # Landroid/graphics/Bitmap;
    .param p4, "newValue"    # Landroid/graphics/Bitmap;

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 12
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/tds/common/widgets/image/MemCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 15
    invoke-static {p2}, Lcom/tds/common/widgets/image/ImageUtil;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
