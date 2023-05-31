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

.field private final b:Lcom/bytedance/sdk/adnet/core/m;

.field private c:I

.field private final d:Lcom/bytedance/sdk/adnet/b/d$b;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/b/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/m;Lcom/bytedance/sdk/adnet/b/d$b;)V
    .registers 5

    .prologue
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
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d;->b:Lcom/bytedance/sdk/adnet/core/m;

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

    .prologue
    .line 605
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 609
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 613
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 615
    invoke-virtual {p4}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .registers 6

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/adnet/b/d;->b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V
    .registers 7

    .prologue
    .line 561
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    new-instance v0, Lcom/bytedance/sdk/adnet/b/d$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/adnet/b/d$5;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    iget v2, p0, Lcom/bytedance/sdk/adnet/b/d;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 593
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/b/d;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V
    .registers 20

    .prologue
    .line 246
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    new-instance v4, Lcom/bytedance/sdk/adnet/b/d$2;

    move-object/from16 v0, p2

    invoke-direct {v4, p0, v0}, Lcom/bytedance/sdk/adnet/b/d$2;-><init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$d;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v7

    .line 256
    iget-object v3, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    invoke-interface {v3, v7}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 257
    if-eqz v5, :cond_34

    .line 259
    new-instance v3, Lcom/bytedance/sdk/adnet/b/d$c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/adnet/b/d$c;-><init>(Lcom/bytedance/sdk/adnet/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 262
    iget-object v4, p0, Lcom/bytedance/sdk/adnet/b/d;->g:Landroid/os/Handler;

    new-instance v5, Lcom/bytedance/sdk/adnet/b/d$3;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v0, v3}, Lcom/bytedance/sdk/adnet/b/d$3;-><init>(Lcom/bytedance/sdk/adnet/b/d;Lcom/bytedance/sdk/adnet/b/d$d;Lcom/bytedance/sdk/adnet/b/d$c;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 296
    :goto_33
    return-void

    .line 274
    :cond_34
    new-instance v3, Lcom/bytedance/sdk/adnet/b/d$c;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/adnet/b/d$c;-><init>(Lcom/bytedance/sdk/adnet/b/d;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V

    .line 279
    iget-object v4, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 280
    if-nez v4, :cond_50

    .line 281
    iget-object v4, p0, Lcom/bytedance/sdk/adnet/b/d;->f:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 283
    :cond_50
    if-eqz v4, :cond_56

    .line 285
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$c;)V

    goto :goto_33

    :cond_56
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v7

    .line 292
    invoke-virtual/range {v8 .. v13}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v4

    .line 294
    iget-object v5, p0, Lcom/bytedance/sdk/adnet/b/d;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/adnet/core/m;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 295
    iget-object v5, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    new-instance v6, Lcom/bytedance/sdk/adnet/b/d$a;

    invoke-direct {v6, v4, v3}, Lcom/bytedance/sdk/adnet/b/d$a;-><init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/b/d$c;)V

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lcom/bytedance/sdk/adnet/b/e;

    new-instance v2, Lcom/bytedance/sdk/adnet/b/d$4;

    invoke-direct {v2, p0, p5}, Lcom/bytedance/sdk/adnet/b/d$4;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/e;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;II)V

    .line 198
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;II)V
    .registers 11

    .prologue
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
    .registers 14

    .prologue
    .line 230
    iget-object v7, p0, Lcom/bytedance/sdk/adnet/b/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/bytedance/sdk/adnet/b/d$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/adnet/b/d$1;-><init>(Lcom/bytedance/sdk/adnet/b/d;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;IILandroid/widget/ImageView$ScaleType;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/b/d;->d:Lcom/bytedance/sdk/adnet/b/d$b;

    iget-object v0, p2, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/adnet/b/d$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 358
    if-eqz v0, :cond_20

    .line 360
    iget-object v1, p2, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/b/d$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 361
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 364
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V

    .line 366
    :cond_20
    return-void
.end method

.method protected b(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/b/d$a;

    .line 378
    if-eqz v0, :cond_15

    .line 380
    iget-object v1, p2, Lcom/bytedance/sdk/adnet/core/n;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/err/VAdError;)V

    .line 381
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/adnet/b/d$a;->a(Lcom/bytedance/sdk/adnet/core/n;)V

    .line 384
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$a;)V

    .line 386
    :cond_15
    return-void
.end method
