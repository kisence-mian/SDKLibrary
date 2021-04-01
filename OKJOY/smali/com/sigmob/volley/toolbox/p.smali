.class public Lcom/sigmob/volley/toolbox/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/sigmob/volley/u;

.field private final b:Lcom/sigmob/volley/toolbox/r;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/toolbox/q;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/toolbox/q;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private f:I

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/u;Lcom/sigmob/volley/toolbox/r;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/p;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/p;->d:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/p;->e:Landroid/os/Handler;

    const/16 v0, 0x64

    iput v0, p0, Lcom/sigmob/volley/toolbox/p;->f:I

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/p;->a:Lcom/sigmob/volley/u;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/p;->b:Lcom/sigmob/volley/toolbox/r;

    return-void
.end method

.method public static a(Landroid/widget/ImageView;II)Lcom/sigmob/volley/toolbox/t;
    .registers 4

    new-instance v0, Lcom/sigmob/volley/toolbox/p$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/sigmob/volley/toolbox/p$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/p;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/p;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/q;)V
    .registers 7

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/sigmob/volley/toolbox/p$4;

    invoke-direct {v0, p0}, Lcom/sigmob/volley/toolbox/p$4;-><init>(Lcom/sigmob/volley/toolbox/p;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/p;->g:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/p;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sigmob/volley/toolbox/p;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method

.method private static b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/sigmob/volley/toolbox/p;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->c:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/sigmob/volley/q;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sigmob/volley/q",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sigmob/volley/toolbox/u;

    new-instance v2, Lcom/sigmob/volley/toolbox/p$2;

    invoke-direct {v2, p0, p5}, Lcom/sigmob/volley/toolbox/p$2;-><init>(Lcom/sigmob/volley/toolbox/p;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/sigmob/volley/toolbox/p$3;

    invoke-direct {v7, p0, p5}, Lcom/sigmob/volley/toolbox/p$3;-><init>(Lcom/sigmob/volley/toolbox/p;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/volley/toolbox/u;-><init>(Ljava/lang/String;Lcom/sigmob/volley/z;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/sigmob/volley/y;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)Lcom/sigmob/volley/toolbox/s;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;II)Lcom/sigmob/volley/toolbox/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;II)Lcom/sigmob/volley/toolbox/s;
    .registers 11

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;IILandroid/widget/ImageView$ScaleType;)Lcom/sigmob/volley/toolbox/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;IILandroid/widget/ImageView$ScaleType;)Lcom/sigmob/volley/toolbox/s;
    .registers 20

    invoke-static {}, Lcom/sigmob/volley/toolbox/x;->a()V

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-static {p1, v0, v1, v2}, Lcom/sigmob/volley/toolbox/p;->b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/sigmob/volley/toolbox/p;->b:Lcom/sigmob/volley/toolbox/r;

    invoke-interface {v3, v7}, Lcom/sigmob/volley/toolbox/r;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_25

    new-instance v3, Lcom/sigmob/volley/toolbox/s;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/sigmob/volley/toolbox/s;-><init>(Lcom/sigmob/volley/toolbox/p;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/sigmob/volley/toolbox/t;->a(Lcom/sigmob/volley/toolbox/s;Z)V

    :cond_24
    :goto_24
    return-object v3

    :cond_25
    new-instance v3, Lcom/sigmob/volley/toolbox/s;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/sigmob/volley/toolbox/s;-><init>(Lcom/sigmob/volley/toolbox/p;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/volley/toolbox/t;)V

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/sigmob/volley/toolbox/t;->a(Lcom/sigmob/volley/toolbox/s;Z)V

    iget-object v4, p0, Lcom/sigmob/volley/toolbox/p;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sigmob/volley/toolbox/q;

    if-eqz v4, :cond_43

    invoke-virtual {v4, v3}, Lcom/sigmob/volley/toolbox/q;->a(Lcom/sigmob/volley/toolbox/s;)V

    goto :goto_24

    :cond_43
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/sigmob/volley/q;

    move-result-object v4

    iget-object v5, p0, Lcom/sigmob/volley/toolbox/p;->a:Lcom/sigmob/volley/u;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/sigmob/volley/toolbox/p;->a:Lcom/sigmob/volley/u;

    invoke-virtual {v5, v4}, Lcom/sigmob/volley/u;->a(Lcom/sigmob/volley/q;)Lcom/sigmob/volley/q;

    iget-object v5, p0, Lcom/sigmob/volley/toolbox/p;->c:Ljava/util/HashMap;

    new-instance v6, Lcom/sigmob/volley/toolbox/q;

    invoke-direct {v6, v4, v3}, Lcom/sigmob/volley/toolbox/q;-><init>(Lcom/sigmob/volley/q;Lcom/sigmob/volley/toolbox/s;)V

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/volley/toolbox/p;->f:I

    return-void
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->b:Lcom/sigmob/volley/toolbox/r;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/volley/toolbox/r;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/q;

    if-eqz v0, :cond_15

    invoke-static {v0, p2}, Lcom/sigmob/volley/toolbox/q;->a(Lcom/sigmob/volley/toolbox/q;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/q;)V

    :cond_15
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/sigmob/volley/ae;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/p;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/q;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Lcom/sigmob/volley/toolbox/q;->a(Lcom/sigmob/volley/ae;)V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/q;)V

    :cond_10
    return-void
.end method

.method public a(Ljava/lang/String;II)Z
    .registers 5

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sigmob/volley/toolbox/p;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .registers 7

    invoke-static {}, Lcom/sigmob/volley/toolbox/x;->a()V

    invoke-static {p1, p2, p3, p4}, Lcom/sigmob/volley/toolbox/p;->b(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/volley/toolbox/p;->b:Lcom/sigmob/volley/toolbox/r;

    invoke-interface {v1, v0}, Lcom/sigmob/volley/toolbox/r;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
