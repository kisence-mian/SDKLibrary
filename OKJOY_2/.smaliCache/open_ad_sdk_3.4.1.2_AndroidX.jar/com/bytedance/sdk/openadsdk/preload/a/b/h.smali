.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/h;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;,
        Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;,
        Lcom/bytedance/sdk/openadsdk/preload/a/b/h$c;,
        Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic f:Z

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field final e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private h:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h<",
            "TK;TV;>.a;"
        }
    .end annotation
.end field

.field private i:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->f:Z

    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->g:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 60
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->g:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;-><init>(Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    .line 49
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->d:I

    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 72
    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    sget-object p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->g:Ljava/util/Comparator;

    :goto_14
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a:Ljava/util/Comparator;

    .line 75
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 374
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 375
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 376
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 377
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 380
    iput-object v2, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 381
    if-eqz v2, :cond_e

    .line 382
    iput-object p1, v2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 385
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 388
    iput-object p1, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 389
    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 392
    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_1c

    :cond_1b
    move v0, v4

    :goto_1c
    if-eqz v2, :cond_21

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_22

    :cond_21
    move v2, v4

    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 394
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    if-eqz v3, :cond_30

    iget v4, v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 396
    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 285
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 287
    if-eqz p2, :cond_9

    .line 288
    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 291
    :cond_9
    if-eqz v0, :cond_24

    .line 292
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    if-ne v1, p1, :cond_12

    .line 293
    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_26

    .line 295
    :cond_12
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->f:Z

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    if-ne v1, p1, :cond_1b

    goto :goto_21

    :cond_1b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 296
    :cond_21
    :goto_21
    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_26

    .line 299
    :cond_24
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 301
    :goto_26
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 208
    if-eq p1, p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    return p1
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 402
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 403
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 404
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 405
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 408
    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 409
    if-eqz v3, :cond_e

    .line 410
    iput-object p1, v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 413
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 416
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 417
    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 420
    const/4 v4, 0x0

    if-eqz v1, :cond_1b

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_1c

    :cond_1b
    move v1, v4

    :goto_1c
    if-eqz v3, :cond_21

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_22

    :cond_21
    move v3, v4

    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 422
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    if-eqz v2, :cond_30

    iget v4, v2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    :cond_30
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 424
    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 311
    nop

    :goto_1
    if-eqz p1, :cond_a7

    .line 312
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 313
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 314
    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_e

    :cond_d
    move v3, v2

    .line 315
    :goto_e
    if-eqz v1, :cond_13

    iget v4, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_14

    :cond_13
    move v4, v2

    .line 317
    :goto_14
    sub-int v5, v3, v4

    .line 318
    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v6, :cond_4d

    .line 319
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 320
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 321
    if-eqz v3, :cond_24

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_25

    :cond_24
    move v3, v2

    .line 322
    :goto_25
    if-eqz v0, :cond_29

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 324
    :cond_29
    sub-int/2addr v2, v3

    .line 325
    if-eq v2, v7, :cond_45

    if-nez v2, :cond_31

    if-nez p2, :cond_31

    goto :goto_45

    .line 328
    :cond_31
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->f:Z

    if-nez v0, :cond_3e

    if-ne v2, v8, :cond_38

    goto :goto_3e

    :cond_38
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 329
    :cond_3e
    :goto_3e
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    goto :goto_48

    .line 326
    :cond_45
    :goto_45
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 332
    :goto_48
    if-eqz p2, :cond_4c

    .line 333
    goto/16 :goto_a7

    .line 336
    :cond_4c
    goto :goto_a3

    :cond_4d
    const/4 v1, 0x2

    if-ne v5, v1, :cond_81

    .line 337
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 338
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 339
    if-eqz v3, :cond_59

    iget v3, v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    goto :goto_5a

    :cond_59
    move v3, v2

    .line 340
    :goto_5a
    if-eqz v1, :cond_5e

    iget v2, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 342
    :cond_5e
    sub-int/2addr v2, v3

    .line 343
    if-eq v2, v8, :cond_7a

    if-nez v2, :cond_66

    if-nez p2, :cond_66

    goto :goto_7a

    .line 346
    :cond_66
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->f:Z

    if-nez v1, :cond_73

    if-ne v2, v7, :cond_6d

    goto :goto_73

    :cond_6d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 347
    :cond_73
    :goto_73
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 348
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    goto :goto_7d

    .line 344
    :cond_7a
    :goto_7a
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 350
    :goto_7d
    if-eqz p2, :cond_80

    .line 351
    goto :goto_a7

    .line 354
    :cond_80
    goto :goto_a3

    :cond_81
    if-nez v5, :cond_8a

    .line 355
    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 356
    if-eqz p2, :cond_a3

    .line 357
    goto :goto_a7

    .line 361
    :cond_8a
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->f:Z

    if-nez v0, :cond_99

    if-eq v5, v7, :cond_99

    if-ne v5, v8, :cond_93

    goto :goto_99

    :cond_93
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 362
    :cond_99
    :goto_99
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 363
    if-nez p2, :cond_a3

    .line 364
    goto :goto_a7

    .line 311
    :cond_a3
    :goto_a3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto/16 :goto_1

    .line 368
    :cond_a7
    :goto_a7
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 186
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/lang/Object;Z)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_b

    .line 187
    :catch_9
    move-exception p1

    .line 188
    return-object v0

    .line 186
    :cond_b
    :goto_b
    return-object v0
.end method

.method a(Ljava/lang/Object;Z)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a:Ljava/util/Comparator;

    .line 123
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 124
    nop

    .line 126
    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 129
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->g:Ljava/util/Comparator;

    if-ne v0, v3, :cond_10

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_11

    :cond_10
    move-object v3, v2

    .line 134
    :goto_11
    if-eqz v3, :cond_1a

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->f:Ljava/lang/Object;

    .line 135
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_20

    :cond_1a
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->f:Ljava/lang/Object;

    .line 136
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 139
    :goto_20
    if-nez v4, :cond_23

    .line 140
    return-object v1

    .line 144
    :cond_23
    if-gez v4, :cond_28

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_2a

    :cond_28
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 145
    :goto_2a
    if-nez v5, :cond_2d

    .line 146
    goto :goto_31

    .line 149
    :cond_2d
    nop

    .line 150
    move-object v1, v5

    goto :goto_11

    .line 126
    :cond_30
    const/4 v4, 0x0

    .line 154
    :goto_31
    if-nez p2, :cond_34

    .line 155
    return-object v2

    .line 159
    :cond_34
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 161
    const/4 v2, 0x1

    if-nez v1, :cond_6d

    .line 163
    sget-object v3, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->g:Ljava/util/Comparator;

    if-ne v0, v3, :cond_63

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_42

    goto :goto_63

    .line 164
    :cond_42
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 166
    :cond_63
    :goto_63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    iget-object v3, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 167
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_7e

    .line 169
    :cond_6d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    iget-object v3, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 170
    if-gez v4, :cond_79

    .line 171
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_7b

    .line 173
    :cond_79
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 175
    :goto_7b
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Z)V

    .line 177
    :goto_7e
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    .line 178
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->d:I

    .line 180
    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 202
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_18

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->g:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 204
    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0
.end method

.method a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 218
    if-eqz p2, :cond_e

    .line 219
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 220
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 223
    :cond_e
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 224
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 225
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 226
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_54

    if-eqz v0, :cond_54

    .line 237
    iget v1, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    if-le v1, v4, :cond_25

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b()Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p2

    goto :goto_29

    :cond_25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a()Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p2

    .line 238
    :goto_29
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Z)V

    .line 240
    nop

    .line 241
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 242
    if-eqz v0, :cond_3a

    .line 243
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 244
    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 245
    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 246
    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_3b

    .line 242
    :cond_3a
    move v1, v2

    .line 249
    :goto_3b
    nop

    .line 250
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 251
    if-eqz v0, :cond_48

    .line 252
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 253
    iput-object v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 254
    iput-object p2, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 255
    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 258
    :cond_48
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->h:I

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 260
    return-void

    .line 261
    :cond_54
    if-eqz p2, :cond_5c

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 263
    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_67

    .line 264
    :cond_5c
    if-eqz v0, :cond_64

    .line 265
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 266
    iput-object v3, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->c:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    goto :goto_67

    .line 268
    :cond_64
    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;)V

    .line 271
    :goto_67
    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Z)V

    .line 272
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    .line 273
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->d:I

    .line 274
    return-void
.end method

.method b(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    .line 278
    if-eqz p1, :cond_a

    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;Z)V

    .line 281
    :cond_a
    return-object p1
.end method

.method public clear()V
    .registers 2

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    .line 103
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->d:I

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 107
    iput-object v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->e:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    iput-object v0, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->d:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    .line 108
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->h:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;

    .line 431
    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->h:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$a;

    :goto_c
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    .line 83
    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->g:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->i:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;

    .line 436
    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;-><init>(Lcom/bytedance/sdk/openadsdk/preload/a/b/h;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->i:Lcom/bytedance/sdk/openadsdk/preload/a/b/h$b;

    :goto_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 91
    if-eqz p1, :cond_c

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->a(Ljava/lang/Object;Z)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    .line 95
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->g:Ljava/lang/Object;

    .line 96
    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->g:Ljava/lang/Object;

    .line 97
    return-object v0

    .line 92
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->b(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;

    move-result-object p1

    .line 112
    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/h$d;->g:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return-object p1
.end method

.method public size()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->c:I

    return v0
.end method
