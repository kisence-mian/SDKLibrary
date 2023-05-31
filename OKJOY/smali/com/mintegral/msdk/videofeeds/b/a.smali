.class public final Lcom/mintegral/msdk/videofeeds/b/a;
.super Ljava/lang/Object;
.source "VideoFeedsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/videofeeds/b/a$b;,
        Lcom/mintegral/msdk/videofeeds/b/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mintegral/msdk/videofeeds/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Lcom/mintegral/msdk/c/d;

.field private i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/mintegral/msdk/out/VideoFeedsListener;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Landroid/os/Handler;

.field private o:Z

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->b:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->c:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->d:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "VideoFeedsController"

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/mintegral/msdk/videofeeds/b/a$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/videofeeds/b/a$1;-><init>(Lcom/mintegral/msdk/videofeeds/b/a;)V

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->n:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    .prologue
    .line 98
    :try_start_0
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 99
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 100
    if-eqz v0, :cond_25

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result v0

    .line 107
    :goto_20
    return v0

    .line 105
    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method static synthetic a(Lcom/mintegral/msdk/videofeeds/b/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 83
    :try_start_0
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 84
    sget-object v0, Lcom/mintegral/msdk/videofeeds/b/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 89
    :cond_13
    :goto_13
    return-void

    .line 87
    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private a(Ljava/util/Queue;Ljava/util/Queue;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    const/16 v1, 0x8

    .line 258
    :goto_2
    if-eqz p1, :cond_89

    :try_start_4
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_89

    .line 259
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 260
    if-eqz p2, :cond_9c

    invoke-interface {p2}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_9c

    .line 261
    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "timeout:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3a} :catch_6c

    .line 264
    :goto_3a
    const/4 v1, 0x1

    if-ne v2, v1, :cond_99

    .line 2295
    :try_start_3d
    new-instance v1, Lcom/mintegral/msdk/videofeeds/a/a;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/b/a;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/mintegral/msdk/videofeeds/b/a;->l:Ljava/util/Map;

    invoke-direct {v1, v3, v4, v5}, Lcom/mintegral/msdk/videofeeds/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2297
    new-instance v3, Lcom/mintegral/msdk/videofeeds/b/a$a;

    invoke-direct {v3, p0, v1}, Lcom/mintegral/msdk/videofeeds/b/a$a;-><init>(Lcom/mintegral/msdk/videofeeds/b/a;Lcom/mintegral/msdk/videofeeds/a/a;)V

    .line 2298
    new-instance v4, Lcom/mintegral/msdk/videofeeds/b/a$b;

    invoke-direct {v4, p0, v1, v3}, Lcom/mintegral/msdk/videofeeds/b/a$b;-><init>(Lcom/mintegral/msdk/videofeeds/b/a;Lcom/mintegral/msdk/videofeeds/a/a;Lcom/mintegral/msdk/videofeeds/b/a$a;)V

    .line 2300
    invoke-virtual {v1, v4}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/c/b;)V

    .line 2301
    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/b/a;->n:Landroid/os/Handler;

    if-eqz v4, :cond_5f

    .line 2302
    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/b/a;->n:Landroid/os/Handler;

    int-to-long v6, v0

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2304
    :cond_5f
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    iget-boolean v3, p0, Lcom/mintegral/msdk/videofeeds/b/a;->o:Z

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/videofeeds/a/a;->a(IIZ)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_66} :catch_67

    .line 2307
    :cond_66
    :goto_66
    return-void

    .line 2306
    :catch_67
    move-exception v0

    :try_start_68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_66

    .line 274
    :catch_6c
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v1, :cond_7f

    iget-boolean v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->o:Z

    if-eqz v1, :cond_7f

    .line 277
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    const-string v2, "can\'t show because unknow error"

    invoke-interface {v1, v2}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onVideoLoadFail(Ljava/lang/String;)V

    .line 279
    :cond_7f
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 270
    :cond_89
    :try_start_89
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->o:Z

    if-eqz v0, :cond_66

    .line 271
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    const-string v1, "no api source"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onVideoLoadFail(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_98} :catch_6c

    goto :goto_66

    :cond_99
    move v1, v0

    goto/16 :goto_2

    :cond_9c
    move v0, v1

    goto :goto_3a
.end method

.method static synthetic b(Lcom/mintegral/msdk/videofeeds/b/a;)Lcom/mintegral/msdk/out/VideoFeedsListener;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    return-object v0
.end method

.method public static c()V
    .registers 0

    .prologue
    .line 443
    invoke-static {}, Lcom/mintegral/msdk/base/utils/e;->a()V

    .line 444
    return-void
.end method

.method static synthetic c(Lcom/mintegral/msdk/videofeeds/b/a;)Z
    .registers 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/mintegral/msdk/videofeeds/b/a;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private d()Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_19

    .line 326
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v2, "unitSetting==null"

    invoke-static {v0, v2}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_17

    .line 328
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    const-string v2, "unitSetting is null please call load"

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onShowFail(Ljava/lang/String;)V

    :cond_17
    move-object v0, v1

    .line 354
    :goto_18
    return-object v0

    .line 332
    :cond_19
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->w()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->a(Ljava/util/List;)Ljava/util/Queue;

    move-result-object v2

    .line 333
    :cond_23
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_5c

    .line 334
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 335
    const/4 v3, 0x1

    if-ne v0, v3, :cond_23

    .line 336
    new-instance v0, Lcom/mintegral/msdk/videofeeds/a/a;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/b/a;->g:Landroid/content/Context;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    iget-object v5, p0, Lcom/mintegral/msdk/videofeeds/b/a;->l:Ljava/util/Map;

    invoke-direct {v0, v3, v4, v5}, Lcom/mintegral/msdk/videofeeds/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 337
    invoke-virtual {v0}, Lcom/mintegral/msdk/videofeeds/a/a;->a()Z

    move-result v3

    .line 338
    if-eqz v3, :cond_23

    .line 339
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v3, "call adapter show"

    invoke-static {v2, v3}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v2, Lcom/mintegral/msdk/videofeeds/c/c;

    iget-object v3, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    invoke-direct {v2, v3, v4}, Lcom/mintegral/msdk/videofeeds/c/c;-><init>(Ljava/lang/String;Lcom/mintegral/msdk/out/VideoFeedsListener;)V

    .line 341
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/videofeeds/a/a;->a(Lcom/mintegral/msdk/videofeeds/c/d;)Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;

    move-result-object v0

    goto :goto_18

    .line 345
    :cond_5c
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_67

    .line 346
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    const-string v2, "no ads available can show"

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onShowFail(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_67} :catch_69

    :cond_67
    :goto_67
    move-object v0, v1

    .line 354
    goto :goto_18

    .line 349
    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_67

    .line 351
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    const-string v2, "can\'t show because unknow error"

    invoke-interface {v0, v2}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onShowFail(Ljava/lang/String;)V

    goto :goto_67
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->o:Z

    .line 191
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->g:Landroid/content/Context;

    if-nez v0, :cond_1b

    .line 192
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_13

    .line 193
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    const-string v1, "context is null"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onVideoLoadFail(Ljava/lang/String;)V

    .line 195
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_1a
    return-void

    .line 198
    :cond_1b
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 199
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    if-eqz v0, :cond_2e

    .line 200
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    const-string v1, "unitid is null"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/VideoFeedsListener;->onVideoLoadFail(Ljava/lang/String;)V

    .line 202
    :cond_2e
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v1, "unitid is null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 1450
    :cond_36
    new-instance v0, Lcom/mintegral/msdk/c/c;

    invoke-direct {v0}, Lcom/mintegral/msdk/c/c;-><init>()V

    .line 1451
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/mintegral/msdk/c/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/mintegral/msdk/c/b;->a()Lcom/mintegral/msdk/c/b;

    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/c/b;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    .line 209
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    if-nez v0, :cond_68

    .line 210
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->c(Ljava/lang/String;)Lcom/mintegral/msdk/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    .line 211
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v1, "\u83b7\u53d6\u9ed8\u8ba4\u7684unitsetting"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    :cond_68
    :try_start_68
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    if-eqz v0, :cond_b8

    .line 2234
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->A()I

    move-result v0

    iget v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    mul-int/2addr v0, v1

    .line 2235
    sget-object v1, Lcom/mintegral/msdk/videofeeds/b/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 2236
    sget-object v1, Lcom/mintegral/msdk/videofeeds/b/a;->c:Ljava/util/Map;

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2238
    :cond_8c
    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maxOffset:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mDevAdNum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mUnitId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_b8} :catch_db

    .line 218
    :cond_b8
    :goto_b8
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/d;->w()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/c/d;->a(Ljava/util/List;)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->i:Ljava/util/Queue;

    .line 219
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->h:Lcom/mintegral/msdk/c/d;

    invoke-virtual {v1}, Lcom/mintegral/msdk/c/d;->x()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/c/d;->b(Ljava/util/List;)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->j:Ljava/util/Queue;

    .line 222
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->i:Ljava/util/Queue;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->j:Ljava/util/Queue;

    invoke-direct {p0, v0, v1}, Lcom/mintegral/msdk/videofeeds/b/a;->a(Ljava/util/Queue;Ljava/util/Queue;)V

    goto/16 :goto_1a

    .line 2241
    :catch_db
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b8
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v1, 0xa

    const/4 v2, 0x1

    .line 126
    if-nez p2, :cond_d

    .line 127
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v1, "init error params==null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_c
    :goto_c
    return-void

    .line 130
    :cond_d
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 131
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v1, "init error,make sure you have unitid"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 135
    :cond_1d
    iput-object p2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->l:Ljava/util/Map;

    .line 137
    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    .line 1166
    iput v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    .line 1168
    if-eqz p2, :cond_52

    :try_start_2d
    const-string v0, "ad_num"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1169
    const-string v0, "ad_num"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    .line 1170
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    if-gtz v0, :cond_4a

    .line 1171
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    .line 1173
    :cond_4a
    iget v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I

    if-le v0, v1, :cond_52

    .line 1174
    const/16 v0, 0xa

    iput v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->p:I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_52} :catch_85

    .line 142
    :cond_52
    :goto_52
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->g:Landroid/content/Context;

    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mintegral/msdk/videocommon/d/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/mintegral/msdk/base/utils/e;->b()V

    .line 150
    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 152
    invoke-static {}, Lcom/mintegral/msdk/videocommon/a/a;->a()Lcom/mintegral/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 155
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->m:Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/videocommon/download/c;->createUnitCache(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ILcom/mintegral/msdk/videocommon/listener/a;)Lcom/mintegral/msdk/videocommon/download/k;

    goto :goto_c

    .line 1178
    :catch_85
    move-exception v0

    iget-object v0, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    const-string v1, "ADNUM MUST BE INTEGER"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method public final a(Lcom/mintegral/msdk/out/VideoFeedsListener;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/mintegral/msdk/videofeeds/b/a;->k:Lcom/mintegral/msdk/out/VideoFeedsListener;

    .line 112
    return-void
.end method

.method public final b()Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
    .registers 6

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 314
    :try_start_1
    invoke-direct {p0}, Lcom/mintegral/msdk/videofeeds/b/a;->d()Lcom/mintegral/msdk/videofeeds/vfplayer/VideoFeedsAdView;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1f

    move-result-object v0

    .line 315
    :try_start_5
    iget-object v2, p0, Lcom/mintegral/msdk/videofeeds/b/a;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "show adView==null?:"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1d

    const/4 v1, 0x1

    :goto_11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_27

    .line 319
    :goto_1c
    return-object v0

    .line 315
    :cond_1d
    const/4 v1, 0x0

    goto :goto_11

    .line 317
    :catch_1f
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_23
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    :catch_27
    move-exception v1

    goto :goto_23
.end method
