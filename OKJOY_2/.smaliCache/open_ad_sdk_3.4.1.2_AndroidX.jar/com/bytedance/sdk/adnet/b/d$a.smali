.class Lcom/bytedance/sdk/adnet/b/d$a;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/adnet/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/bytedance/sdk/adnet/err/VAdError;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/b/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/b/d$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/b/d$c;",
            ")V"
        }
    .end annotation

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->e:Ljava/util/List;

    .line 503
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    .line 504
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$a;)Ljava/util/List;
    .registers 1

    .line 473
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/b/d$a;)Landroid/graphics/Bitmap;
    .registers 1

    .line 473
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/adnet/err/VAdError;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;)V
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 526
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    .line 527
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 512
    return-void
.end method

.method public b()Lcom/bytedance/sdk/adnet/core/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    return-object v0
.end method
