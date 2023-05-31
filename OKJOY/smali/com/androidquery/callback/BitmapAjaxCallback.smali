.class public Lcom/androidquery/callback/BitmapAjaxCallback;
.super Lcom/androidquery/callback/AbstractAjaxCallback;
.source "BitmapAjaxCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AbstractAjaxCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        "Lcom/androidquery/callback/BitmapAjaxCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static BIG_MAX:I = 0x0

.field private static BIG_PIXELS:I = 0x0

.field private static BIG_TPIXELS:I = 0x0

.field private static DELAY_WRITE:Z = false

.field private static final FADE_DUR:I = 0x12c

.field private static SMALL_MAX:I

.field private static SMALL_PIXELS:I

.field private static bigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static dummy:Landroid/graphics/Bitmap;

.field private static empty:Landroid/graphics/Bitmap;

.field private static invalidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static queueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/androidquery/callback/BitmapAjaxCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static smallCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchor:F

.field private animation:I

.field private bm:Landroid/graphics/Bitmap;

.field private fallback:I

.field private imageFile:Ljava/io/File;

.field private invalid:Z

.field private preset:Landroid/graphics/Bitmap;

.field private ratio:F

.field private rotate:Z

.field private round:I

.field private targetDim:Z

.field private targetWidth:I

.field private v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 69
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 70
    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 71
    const/16 v0, 0x9c4

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 72
    const v0, 0x27100

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 73
    const v0, 0xf4240

    sput v0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    .line 547
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    .line 552
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 856
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-direct {p0}, Lcom/androidquery/callback/AbstractAjaxCallback;-><init>()V

    .line 92
    iput-boolean v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    .line 93
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 102
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->type(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidquery/callback/BitmapAjaxCallback;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 1039
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 1041
    .local v0, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-nez v0, :cond_27

    .line 1043
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1045
    new-instance v0, Ljava/util/WeakHashMap;

    .end local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 1046
    .restart local v0    # "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    :goto_1f
    return-void

    .line 1050
    :cond_20
    sget-object v1, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 1055
    :cond_27
    invoke-virtual {v0, p2, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/auth/AccountHandle;Lcom/androidquery/callback/ImageOptions;Lorg/apache/http/HttpHost;Ljava/lang/String;)V
    .registers 28
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "progress"    # Ljava/lang/Object;
    .param p5, "ah"    # Lcom/androidquery/auth/AccountHandle;
    .param p6, "options"    # Lcom/androidquery/callback/ImageOptions;
    .param p7, "proxy"    # Lorg/apache/http/HttpHost;
    .param p8, "networkUrl"    # Ljava/lang/String;

    .prologue
    .line 954
    move-object/from16 v0, p6

    iget-boolean v5, v0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    move-object/from16 v0, p6

    iget-boolean v6, v0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    move-object/from16 v0, p6

    iget v7, v0, Lcom/androidquery/callback/ImageOptions;->targetWidth:I

    move-object/from16 v0, p6

    iget v8, v0, Lcom/androidquery/callback/ImageOptions;->fallback:I

    move-object/from16 v0, p6

    iget-object v9, v0, Lcom/androidquery/callback/ImageOptions;->preset:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    iget v10, v0, Lcom/androidquery/callback/ImageOptions;->animation:I

    move-object/from16 v0, p6

    iget v11, v0, Lcom/androidquery/callback/ImageOptions;->ratio:F

    move-object/from16 v0, p6

    iget v12, v0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    move-object/from16 v0, p6

    iget v15, v0, Lcom/androidquery/callback/ImageOptions;->policy:I

    move-object/from16 v0, p6

    iget v0, v0, Lcom/androidquery/callback/ImageOptions;->round:I

    move/from16 v16, v0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v17, p7

    move-object/from16 v18, p8

    invoke-static/range {v1 .. v18}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public static async(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/auth/AccountHandle;IILorg/apache/http/HttpHost;Ljava/lang/String;)V
    .registers 29
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "memCache"    # Z
    .param p5, "fileCache"    # Z
    .param p6, "targetWidth"    # I
    .param p7, "fallbackId"    # I
    .param p8, "preset"    # Landroid/graphics/Bitmap;
    .param p9, "animation"    # I
    .param p10, "ratio"    # F
    .param p11, "anchor"    # F
    .param p12, "progress"    # Ljava/lang/Object;
    .param p13, "ah"    # Lcom/androidquery/auth/AccountHandle;
    .param p14, "policy"    # I
    .param p15, "round"    # I
    .param p16, "proxy"    # Lorg/apache/http/HttpHost;
    .param p17, "networkUrl"    # Ljava/lang/String;

    .prologue
    .line 969
    const/4 v3, 0x0

    .line 971
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_b

    .line 972
    move/from16 v0, p6

    move/from16 v1, p15

    invoke-static {p3, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 975
    :cond_b
    if-eqz v3, :cond_29

    .line 976
    const v2, 0x40ff0001

    invoke-virtual {p2, v2, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 977
    const/4 v2, 0x0

    move-object/from16 v0, p12

    invoke-static {v0, p3, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 978
    const/4 v9, 0x4

    move-object v2, p2

    move-object/from16 v4, p8

    move/from16 v5, p7

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-static/range {v2 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    .line 992
    :goto_28
    return-void

    .line 980
    :cond_29
    new-instance v10, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-direct {v10}, Lcom/androidquery/callback/BitmapAjaxCallback;-><init>()V

    .line 981
    .local v10, "cb":Lcom/androidquery/callback/BitmapAjaxCallback;
    invoke-virtual {v10, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->url(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    invoke-virtual {v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileCache(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->progress(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->auth(Lcom/androidquery/auth/AccountHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p14

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->policy(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/androidquery/callback/BitmapAjaxCallback;

    move/from16 v0, p15

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->round(I)Lcom/androidquery/callback/BitmapAjaxCallback;

    move-result-object v2

    move-object/from16 v0, p17

    invoke-virtual {v2, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->networkUrl(Ljava/lang/String;)Ljava/lang/Object;

    .line 982
    if-eqz p16, :cond_9a

    .line 983
    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p16 .. p16}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v10, v2, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->proxy(Ljava/lang/String;I)Ljava/lang/Object;

    .line 985
    :cond_9a
    if-eqz p0, :cond_a0

    .line 986
    invoke-virtual {v10, p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/app/Activity;)V

    goto :goto_28

    .line 988
    :cond_a0
    invoke-virtual {v10, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_28
.end method

.method private bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 442
    iget v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget-boolean v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetDim:Z

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 8
    .param p1, "cb"    # Lcom/androidquery/callback/BitmapAjaxCallback;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "v"    # Landroid/widget/ImageView;
    .param p4, "bm"    # Landroid/graphics/Bitmap;
    .param p5, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    const/4 v1, 0x0

    .line 589
    if-eqz p3, :cond_5

    if-nez p1, :cond_6

    .line 602
    :cond_5
    :goto_5
    return-void

    .line 591
    :cond_6
    const v0, 0x40ff0001

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 593
    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_1e

    .line 594
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 601
    :cond_1a
    :goto_1a
    invoke-virtual {p1, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    goto :goto_5

    .line 596
    :cond_1e
    invoke-direct {p1, p2, p3, p4, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_1a
.end method

.method public static clearCache()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 679
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 680
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 681
    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 682
    return-void
.end method

.method protected static clearTasks()V
    .registers 1

    .prologue
    .line 685
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 686
    return-void
.end method

.method private static decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p3, "rotate"    # Z

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_15

    .line 252
    invoke-static {p0, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    :cond_7
    :goto_7
    if-nez v0, :cond_14

    if-eqz p2, :cond_14

    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v1, :cond_14

    .line 261
    const-string v1, "decode image failed"

    invoke-static {v1, p0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 264
    :cond_14
    return-object v0

    .line 254
    :cond_15
    if-eqz p1, :cond_7

    .line 256
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method private static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "rotate"    # Z

    .prologue
    const/4 v5, 0x1

    .line 269
    const/4 v4, 0x0

    .line 271
    .local v4, "result":Landroid/graphics/Bitmap;
    if-nez p1, :cond_9

    .line 272
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 275
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_9
    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 276
    iput-boolean v5, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 278
    const/4 v2, 0x0

    .line 282
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_e
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_29
    .catchall {:try_start_e .. :try_end_13} :catchall_31

    .line 283
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_13
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 284
    .local v1, "fd":Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    invoke-static {v1, v5, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 286
    if-eqz v4, :cond_24

    if-eqz p2, :cond_24

    .line 287
    invoke-static {p0, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_39
    .catchall {:try_start_13 .. :try_end_23} :catchall_36

    move-result-object v4

    .line 294
    :cond_24
    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 297
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_28
    return-object v4

    .line 291
    :catch_29
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    :goto_2a
    :try_start_2a
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 294
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    goto :goto_28

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_31
    move-exception v5

    .line 294
    :goto_32
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->close(Ljava/io/Closeable;)V

    .line 295
    throw v5

    .line 293
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_36
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_32

    .line 291
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_39
    move-exception v0

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2a
.end method

.method private static fadeIn(II)Z
    .registers 4
    .param p0, "animation"    # I
    .param p1, "source"    # I

    .prologue
    const/4 v0, 0x1

    .line 931
    packed-switch p0, :pswitch_data_c

    .line 939
    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_5
    :pswitch_5
    return v0

    .line 935
    :pswitch_6
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    .line 937
    :pswitch_9
    if-ne p1, v0, :cond_4

    goto :goto_5

    .line 931
    :pswitch_data_c
    .packed-switch -0x3
        :pswitch_6
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private static filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "iv"    # Landroid/view/View;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "fallback"    # I

    .prologue
    const/4 v1, 0x1

    .line 823
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_14

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    if-eq p1, v0, :cond_14

    .line 824
    const/4 p1, 0x0

    .line 827
    :cond_14
    if-eqz p1, :cond_1b

    .line 828
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_1a
    :goto_1a
    return-object p1

    .line 829
    :cond_1b
    const/4 v0, -0x2

    if-ne p2, v0, :cond_24

    .line 830
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    .line 831
    :cond_24
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1a

    .line 832
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a
.end method

.method private static getBCache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 690
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    .line 692
    :cond_15
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->bigCache:Ljava/util/Map;

    return-object v0
.end method

.method public static getEmptyBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 549
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->empty:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getFallback()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    .line 510
    const/4 v0, 0x0

    .line 512
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 513
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_26

    .line 515
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 518
    if-nez v0, :cond_26

    .line 519
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_26

    .line 522
    invoke-virtual {p0, v1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 527
    .end local v1    # "key":Ljava/lang/String;
    :cond_26
    return-object v0
.end method

.method private static getICache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 705
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    const/16 v1, 0x64

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 707
    :cond_16
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    .line 769
    if-lez p1, :cond_19

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 773
    :cond_19
    if-lez p2, :cond_32

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 777
    :cond_32
    return-object p0
.end method

.method public static getMemoryCached(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    const/4 v3, 0x0

    .line 533
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1, v3, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 536
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_18

    .line 537
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_18

    .line 540
    invoke-static {v1, v3, v3, v0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    .line 544
    :cond_18
    return-object v0
.end method

.method public static getMemoryCached(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I

    .prologue
    .line 735
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZI)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "target"    # I
    .param p3, "width"    # Z
    .param p4, "round"    # I

    .prologue
    .line 370
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedImage(Ljava/lang/String;[BIZIZ)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "target"    # I
    .param p3, "width"    # Z
    .param p4, "round"    # I
    .param p5, "rotate"    # Z

    .prologue
    .line 386
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 418
    :cond_5
    :goto_5
    return-object v0

    .line 388
    :cond_6
    const/4 v4, 0x0

    .line 390
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    if-lez p2, :cond_29

    .line 392
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 393
    .local v3, "info":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 395
    invoke-static {p0, p1, v3, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    .line 397
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 398
    .local v1, "dim":I
    if-nez p3, :cond_1e

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 399
    :cond_1e
    invoke-static {v1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->sampleSize(II)I

    move-result v5

    .line 401
    .local v5, "ssize":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 402
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 406
    .end local v1    # "dim":I
    .end local v3    # "info":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "ssize":I
    :cond_29
    const/4 v0, 0x0

    .line 408
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_2a
    invoke-static {p0, p1, v4, p5}, Lcom/androidquery/callback/BitmapAjaxCallback;->decode(Ljava/lang/String;[BLandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    :try_end_2d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2d} :catch_35

    move-result-object v0

    .line 414
    :goto_2e
    if-lez p4, :cond_5

    .line 415
    invoke-static {v0, p4}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    .line 409
    :catch_35
    move-exception v2

    .line 410
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 411
    invoke-static {v2}, Lcom/androidquery/util/AQUtility;->report(Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method private static getRotateMatrix(I)Landroid/graphics/Matrix;
    .registers 7
    .param p0, "ori"    # I

    .prologue
    const/high16 v5, 0x43340000    # 180.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 336
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 337
    .local v0, "matrix":Landroid/graphics/Matrix;
    packed-switch p0, :pswitch_data_38

    .line 365
    :goto_12
    return-object v0

    .line 339
    :pswitch_13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_12

    .line 342
    :pswitch_17
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_12

    .line 345
    :pswitch_1b
    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_12

    .line 349
    :pswitch_22
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_12

    .line 353
    :pswitch_29
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_12

    .line 356
    :pswitch_2d
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 357
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_12

    .line 360
    :pswitch_34
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_12

    .line 337
    :pswitch_data_38
    .packed-switch 0x2
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_22
        :pswitch_29
        :pswitch_2d
        :pswitch_34
    .end packed-switch
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "pixels"    # I

    .prologue
    const/4 v10, 0x0

    .line 1063
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1064
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1066
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 1067
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1068
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1069
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1070
    .local v5, "rectF":Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 1072
    .local v6, "roundPx":F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1073
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1074
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1075
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1077
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1078
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1080
    return-object v2
.end method

.method private static getSCache()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    if-nez v0, :cond_16

    .line 698
    new-instance v0, Lcom/androidquery/util/BitmapCache;

    sget v1, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    sget v2, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    const v3, 0x3d090

    invoke-direct {v0, v1, v2, v3}, Lcom/androidquery/util/BitmapCache;-><init>(III)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    .line 700
    :cond_16
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->smallCache:Ljava/util/Map;

    return-object v0
.end method

.method public static isMemoryCached(Ljava/lang/String;)Z
    .registers 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 724
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method private static makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "ratio"    # F
    .param p3, "anchor"    # F

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 880
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_14

    .line 881
    new-instance v0, Lcom/androidquery/util/RatioDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/androidquery/util/RatioDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/widget/ImageView;FF)V

    .line 886
    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :goto_13
    return-object v0

    .line 883
    :cond_14
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_13
.end method

.method private static memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I

    .prologue
    .line 740
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    .line 742
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    .line 743
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 745
    .local v1, "result":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1a

    .line 746
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    .line 747
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 750
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :cond_1a
    if-nez v1, :cond_34

    .line 751
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 752
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 754
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_34

    .line 756
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getLastStatus()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_34

    .line 757
    const/4 v2, 0x0

    sput-object v2, Lcom/androidquery/callback/BitmapAjaxCallback;->invalidCache:Ljava/util/Map;

    .line 758
    const/4 v1, 0x0

    .line 764
    :cond_34
    return-object v1
.end method

.method private static memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V
    .registers 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "targetWidth"    # I
    .param p2, "round"    # I
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "invalid"    # Z

    .prologue
    .line 782
    if-nez p3, :cond_3

    .line 812
    :cond_2
    :goto_2
    return-void

    .line 784
    :cond_3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v2, v3, v4

    .line 786
    .local v2, "pixels":I
    const/4 v0, 0x0

    .line 788
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    if-eqz p4, :cond_2a

    .line 789
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getICache()Ljava/util/Map;

    move-result-object v0

    .line 796
    :goto_14
    if-gtz p1, :cond_18

    if-lez p2, :cond_38

    .line 798
    :cond_18
    invoke-static {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->getKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 803
    const/4 v3, 0x0

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 790
    .end local v1    # "key":Ljava/lang/String;
    :cond_2a
    sget v3, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    if-gt v2, v3, :cond_33

    .line 791
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getSCache()Ljava/util/Map;

    move-result-object v0

    .line 792
    goto :goto_14

    .line 793
    :cond_33
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->getBCache()Ljava/util/Map;

    move-result-object v0

    goto :goto_14

    .line 807
    :cond_38
    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/widget/ImageView;

    .prologue
    const v2, 0x40ff0001

    const/4 v1, 0x1

    .line 841
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_28

    .line 843
    :cond_12
    invoke-virtual {p2, v2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 845
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->cacheAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 846
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 853
    :cond_28
    :goto_28
    return-void

    .line 849
    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    goto :goto_28
.end method

.method private static rotate(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 303
    if-nez p1, :cond_6

    const/4 v10, 0x0

    .line 331
    :cond_5
    :goto_5
    return-object v10

    .line 305
    :cond_6
    move-object v10, p1

    .line 307
    .local v10, "result":Landroid/graphics/Bitmap;
    const/4 v9, 0x1

    .line 310
    .local v9, "ori":I
    :try_start_8
    new-instance v8, Landroid/media/ExifInterface;

    invoke-direct {v8, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 311
    .local v8, "ei":Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_76

    move-result v9

    .line 317
    .end local v8    # "ei":Landroid/media/ExifInterface;
    :goto_14
    if-lez v9, :cond_5

    .line 319
    invoke-static {v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->getRotateMatrix(I)Landroid/graphics/Matrix;

    move-result-object v5

    .line 320
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 322
    const-string v0, "before"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    const-string v0, "after"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    if-eq p1, v10, :cond_5

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 312
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :catch_76
    move-exception v7

    .line 314
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private static sampleSize(II)I
    .registers 5
    .param p0, "width"    # I
    .param p1, "target"    # I

    .prologue
    .line 425
    const/4 v1, 0x1

    .line 427
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0xa

    if-lt v0, v2, :cond_7

    .line 438
    :cond_6
    return v1

    .line 429
    :cond_7
    mul-int/lit8 v2, p1, 0x2

    if-lt p0, v2, :cond_6

    .line 433
    div-int/lit8 p0, p0, 0x2

    .line 434
    mul-int/lit8 v1, v1, 0x2

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "isPreset"    # Z

    .prologue
    .line 860
    if-nez p3, :cond_7

    .line 861
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    :cond_6
    :goto_6
    return-void

    .line 865
    :cond_7
    if-eqz p4, :cond_15

    .line 866
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    invoke-static {p2, p3, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 870
    :cond_15
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    if-eqz v0, :cond_6

    .line 871
    iget-object v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    iget v4, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    iget v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    iget v6, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {v0}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v7

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v7}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V

    goto :goto_6
.end method

.method private static setBmAnimate(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIFFI)V
    .registers 16
    .param p0, "iv"    # Landroid/widget/ImageView;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "preset"    # Landroid/graphics/Bitmap;
    .param p3, "fallback"    # I
    .param p4, "animation"    # I
    .param p5, "ratio"    # F
    .param p6, "anchor"    # F
    .param p7, "source"    # I

    .prologue
    .line 892
    invoke-static {p0, p1, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->filter(Landroid/view/View;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 893
    if-nez p1, :cond_b

    .line 894
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 927
    :goto_a
    return-void

    .line 898
    :cond_b
    invoke-static {p0, p1, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 899
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 901
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-static {p4, p7}, Lcom/androidquery/callback/BitmapAjaxCallback;->fadeIn(II)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 902
    if-nez p2, :cond_3d

    .line 903
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 904
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 905
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 919
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 921
    if-eqz v0, :cond_65

    .line 922
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 923
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    .line 908
    :cond_3d
    invoke-static {p0, p2, p5, p6}, Lcom/androidquery/callback/BitmapAjaxCallback;->makeDrawable(Landroid/widget/ImageView;Landroid/graphics/Bitmap;FF)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 909
    .local v3, "pd":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x2

    new-array v2, v5, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/4 v5, 0x1

    aput-object v1, v2, v5

    .line 910
    .local v2, "ds":[Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 911
    .local v4, "td":Landroid/graphics/drawable/TransitionDrawable;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 912
    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 913
    move-object v1, v4

    .line 915
    goto :goto_2d

    .end local v2    # "ds":[Landroid/graphics/drawable/Drawable;
    .end local v3    # "pd":Landroid/graphics/drawable/Drawable;
    .end local v4    # "td":Landroid/graphics/drawable/TransitionDrawable;
    :cond_5a
    if-lez p4, :cond_2d

    .line 916
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_2d

    .line 925
    :cond_65
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a
.end method

.method public static setCacheLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .prologue
    .line 625
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_MAX:I

    .line 626
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 627
    return-void
.end method

.method public static setDelayWrite(Z)V
    .registers 1
    .param p0, "delay"    # Z

    .prologue
    .line 638
    sput-boolean p0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    .line 639
    return-void
.end method

.method public static setIconCacheLimit(I)V
    .registers 1
    .param p0, "limit"    # I

    .prologue
    .line 615
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_MAX:I

    .line 616
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 617
    return-void
.end method

.method public static setMaxPixelLimit(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 671
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_TPIXELS:I

    .line 672
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 673
    return-void
.end method

.method public static setPixelLimit(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 649
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->BIG_PIXELS:I

    .line 650
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 651
    return-void
.end method

.method public static setSmallPixel(I)V
    .registers 1
    .param p0, "pixels"    # I

    .prologue
    .line 661
    sput p0, Lcom/androidquery/callback/BitmapAjaxCallback;->SMALL_PIXELS:I

    .line 662
    invoke-static {}, Lcom/androidquery/callback/BitmapAjaxCallback;->clearCache()V

    .line 663
    return-void
.end method


# virtual methods
.method protected accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 450
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 453
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/androidquery/callback/AbstractAjaxCallback;->accessFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_e
.end method

.method public anchor(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "anchor"    # F

    .prologue
    .line 224
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->anchor:F

    .line 226
    return-object p0
.end method

.method public animation(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "animation"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->animation:I

    .line 183
    return-object p0
.end method

.method public async(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 999
    invoke-virtual {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1003
    .local v2, "v":Landroid/widget/ImageView;
    if-nez v1, :cond_17

    .line 1004
    invoke-virtual {p0, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 1005
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 1029
    :goto_16
    return-void

    .line 1009
    :cond_17
    invoke-virtual {p0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1010
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_39

    .line 1011
    const v3, 0x40ff0001

    invoke-virtual {v2, v3, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 1012
    new-instance v3, Lcom/androidquery/callback/AjaxStatus;

    invoke-direct {v3}, Lcom/androidquery/callback/AjaxStatus;-><init>()V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/androidquery/callback/AjaxStatus;->source(I)Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidquery/callback/AjaxStatus;->done()Lcom/androidquery/callback/AjaxStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    .line 1013
    iget-object v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    invoke-virtual {p0, v1, v0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_16

    .line 1018
    :cond_39
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->presetBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1020
    sget-object v3, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 1021
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 1022
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/androidquery/callback/AbstractAjaxCallback;->async(Landroid/content/Context;)V

    goto :goto_16

    .line 1024
    :cond_4f
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/androidquery/callback/BitmapAjaxCallback;->showProgress(Z)V

    .line 1025
    invoke-direct {p0, v1, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->addQueue(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_16
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 161
    return-object p0
.end method

.method public final callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 560
    .local v3, "firstView":Landroid/widget/ImageView;
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/WeakHashMap;

    .line 563
    .local v10, "ivs":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Landroid/widget/ImageView;Lcom/androidquery/callback/BitmapAjaxCallback;>;"
    if-eqz v10, :cond_18

    invoke-virtual {v10, v3}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 564
    invoke-direct/range {v0 .. v5}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    .line 567
    :cond_20
    if-eqz v10, :cond_30

    .line 569
    invoke-virtual {v10}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 571
    .local v11, "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_31

    .line 579
    .end local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_30
    return-void

    .line 571
    .restart local v11    # "set":Ljava/util/Set;, "Ljava/util/Set<Landroid/widget/ImageView;>;"
    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 572
    .local v7, "view":Landroid/widget/ImageView;
    invoke-virtual {v10, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/androidquery/callback/BitmapAjaxCallback;

    .line 573
    .local v5, "cb":Lcom/androidquery/callback/BitmapAjaxCallback;
    iput-object p3, v5, Lcom/androidquery/callback/BitmapAjaxCallback;->status:Lcom/androidquery/callback/AjaxStatus;

    move-object v4, p0

    move-object v6, p1

    move-object v8, p2

    move-object v9, p3

    .line 574
    invoke-direct/range {v4 .. v9}, Lcom/androidquery/callback/BitmapAjaxCallback;->checkCb(Lcom/androidquery/callback/BitmapAjaxCallback;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    goto :goto_2a
.end method

.method protected callback(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;
    .param p3, "bm"    # Landroid/graphics/Bitmap;
    .param p4, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/androidquery/callback/BitmapAjaxCallback;->setBitmap(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 606
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->callback(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public fallback(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    .line 172
    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->imageFile:Ljava/io/File;

    .line 138
    return-object p0
.end method

.method protected fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 459
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->fileGet(Ljava/lang/String;Ljava/io/File;Lcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public imageView(Landroid/widget/ImageView;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 3
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->v:Ljava/lang/ref/WeakReference;

    .line 115
    return-object p0
.end method

.method protected isStreamingContent()Z
    .registers 2

    .prologue
    .line 1033
    sget-boolean v0, Lcom/androidquery/callback/BitmapAjaxCallback;->DELAY_WRITE:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->bm:Landroid/graphics/Bitmap;

    .line 714
    :goto_6
    return-object v0

    .line 713
    :cond_7
    iget-boolean v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->memCache:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_6

    .line 714
    :cond_d
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    invoke-static {p1, v0, v1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6
.end method

.method protected bridge synthetic memGet(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/androidquery/callback/BitmapAjaxCallback;->memGet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 817
    iget v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    iget v1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    iget-boolean v2, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    invoke-static {p1, v0, v1, p2, v2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;IILandroid/graphics/Bitmap;Z)V

    .line 818
    return-void
.end method

.method protected bridge synthetic memPut(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->memPut(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public preset(Landroid/graphics/Bitmap;)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "preset"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    .line 150
    return-object p0
.end method

.method public ratio(F)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "ratio"    # F

    .prologue
    .line 193
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->ratio:F

    .line 194
    return-object p0
.end method

.method public rotate(Z)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "rotate"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->rotate:Z

    .line 205
    return-object p0
.end method

.method public round(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "radius"    # I

    .prologue
    .line 240
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->round:I

    .line 241
    return-object p0
.end method

.method protected skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    .line 583
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->queueMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    return-void
.end method

.method protected bridge synthetic skip(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .registers 4

    .prologue
    .line 1
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->skip(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public targetWidth(I)Lcom/androidquery/callback/BitmapAjaxCallback;
    .registers 2
    .param p1, "targetWidth"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->targetWidth:I

    .line 126
    return-object p0
.end method

.method public transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "status"    # Lcom/androidquery/callback/AjaxStatus;

    .prologue
    const/4 v5, 0x1

    .line 467
    const/4 v2, 0x0

    .line 469
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getFile()Ljava/io/File;

    move-result-object v1

    .line 470
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_c

    .line 471
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 474
    :cond_c
    invoke-direct {p0, v2, p2}, Lcom/androidquery/callback/BitmapAjaxCallback;->bmGet(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 476
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_34

    .line 478
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    if-lez v3, :cond_35

    .line 479
    invoke-direct {p0}, Lcom/androidquery/callback/BitmapAjaxCallback;->getFallback()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 486
    :cond_1a
    :goto_1a
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_24

    .line 487
    iput-boolean v5, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->invalid:Z

    .line 492
    :cond_24
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getSource()I

    move-result v3

    if-ne v3, v5, :cond_34

    if-eqz v1, :cond_34

    .line 493
    const-string v3, "invalid bm from net"

    invoke-static {v3}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;)V

    .line 494
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 502
    :cond_34
    return-object v0

    .line 480
    :cond_35
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_3f

    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_42

    .line 481
    :cond_3f
    sget-object v0, Lcom/androidquery/callback/BitmapAjaxCallback;->dummy:Landroid/graphics/Bitmap;

    .line 482
    goto :goto_1a

    :cond_42
    iget v3, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->fallback:I

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1a

    .line 483
    iget-object v0, p0, Lcom/androidquery/callback/BitmapAjaxCallback;->preset:Landroid/graphics/Bitmap;

    goto :goto_1a
.end method

.method public bridge synthetic transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/androidquery/callback/BitmapAjaxCallback;->transform(Ljava/lang/String;[BLcom/androidquery/callback/AjaxStatus;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
