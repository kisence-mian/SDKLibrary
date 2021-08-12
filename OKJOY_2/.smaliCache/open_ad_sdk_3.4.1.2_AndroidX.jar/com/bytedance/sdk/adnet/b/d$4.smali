.class Lcom/bytedance/sdk/adnet/b/d$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/adnet/core/m$a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/adnet/b/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V
    .registers 3

    .line 306
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$4;->b:Lcom/bytedance/sdk/adnet/b/d;

    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$4;->b:Lcom/bytedance/sdk/adnet/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/adnet/b/d$4$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/adnet/b/d$4$1;-><init>(Lcom/bytedance/sdk/adnet/b/d$4;Lcom/bytedance/sdk/adnet/core/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$4;->b:Lcom/bytedance/sdk/adnet/b/d;

    invoke-static {v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/adnet/b/d$4$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/adnet/b/d$4$2;-><init>(Lcom/bytedance/sdk/adnet/b/d$4;Lcom/bytedance/sdk/adnet/core/m;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method
