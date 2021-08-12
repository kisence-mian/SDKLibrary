.class public Lcom/bytedance/sdk/adnet/b/d;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/b/d$a;,
        Lcom/bytedance/sdk/adnet/b/d$c;,
        Lcom/bytedance/sdk/adnet/b/d$d;,
        Lcom/bytedance/sdk/adnet/b/d$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lcom/bytedance/sdk/adnet/core/l;

.field private c:I

.field private final d:Lcom/bytedance/sdk/adnet/b/d$b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/l;Lcom/bytedance/sdk/adnet/b/d$b;)V
    .registers 5

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 58
    const/16 v0, 0x32

    iput v0, p0, Lcom/bytedance/sdk/adnet/b/d;->c:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d;->b:Lcom/bytedance/sdk/adnet/core/l;

    .line 107
    if-nez p2, :cond_37

    new-instance p2, Lcom/bytedance/sdk/adnet/b/a;

    invoke-direct {p2}, Lcom/bytedance/sdk/adnet/b/a;-><init>()V

    :cond_37
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    .line 108
    return-void
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 7

    .line 605
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 607
    return-object v0

    .line 609
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 610
    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 612
    const-string v0, "#H"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 613
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 614
    const-string p3, "#S"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 615
    invoke-virtual {p4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 616
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 617
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 609
    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .registers 6

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/adnet/b/d;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V
    .registers 5

    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance p2, Lcom/bytedance/sdk/adnet/b/d$5;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/adnet/b/d$5;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V

    .line 592
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/sdk/adnet/b/d;->c:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 593
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/Map;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .registers 14

    .line 246
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/adnet/b/d$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/adnet/b/d$2;-><init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 257
    if-eqz v4, :cond_2b

    .line 259
    new-instance p3, Lcom/bytedance/sdk/adnet/b/d$c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p3

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/adnet/b/d$c;-><init>(Lcom/bytedance/sdk/adnet/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 262
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    new-instance p4, Lcom/bytedance/sdk/adnet/b/d$3;

    invoke-direct {p4, p0, p2, p3}, Lcom/bytedance/sdk/adnet/b/d$3;-><init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$d;Lcom/bytedance/sdk/adnet/b/d$c;)V

    invoke-virtual {p1, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void

    .line 274
    :cond_2b
    new-instance v1, Lcom/bytedance/sdk/adnet/b/d$c;

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, v0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/adnet/b/d$c;-><init>(Lcom/bytedance/sdk/adnet/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 279
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 280
    if-nez p2, :cond_48

    .line 281
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 283
    :cond_48
    if-eqz p2, :cond_4e

    .line 285
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$c;)V

    .line 286
    return-void

    .line 291
    :cond_4e
    nop

    .line 292
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 294
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/b/d;->b:Lcom/bytedance/sdk/adnet/core/l;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 295
    iget-object p2, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    new-instance p3, Lcom/bytedance/sdk/adnet/b/d$a;

    invoke-direct {p3, p1, v1}, Lcom/bytedance/sdk/adnet/b/d$a;-><init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/b/d$c;)V

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 304
    new-instance v7, Lcom/bytedance/sdk/adnet/b/e;

    new-instance v2, Lcom/bytedance/sdk/adnet/b/d$4;

    invoke-direct {v2, p0, p5}, Lcom/bytedance/sdk/adnet/b/d$4;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/e;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v7
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V
    .registers 4

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;II)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;II)V
    .registers 11

    .line 206
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    .line 207
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .registers 15

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/bytedance/sdk/adnet/b/d$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/adnet/b/d$1;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    iget-object v1, p2, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v1}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 358
    if-eqz v0, :cond_20

    .line 360
    iget-object v1, p2, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 361
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 364
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V

    .line 366
    :cond_20
    return-void
.end method

.method protected b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 378
    if-eqz v0, :cond_15

    .line 380
    iget-object v1, p2, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 381
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    .line 384
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V

    .line 386
    :cond_15
    return-void
.end method
