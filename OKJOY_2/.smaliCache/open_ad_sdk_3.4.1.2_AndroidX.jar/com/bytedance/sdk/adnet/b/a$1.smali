.class Lcom/bytedance/sdk/adnet/b/a$1;
.super Landroid/util/LruCache;
.source "DefaultImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/a;-><init>()V
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
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/a;I)V
    .registers 3

    .line 21
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/a$1;->a:Lcom/bytedance/sdk/adnet/b/a;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 3

    .line 24
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int/2addr p1, p2

    return p1
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 21
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/adnet/b/a$1;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
