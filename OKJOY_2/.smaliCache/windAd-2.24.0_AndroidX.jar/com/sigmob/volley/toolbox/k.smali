.class public Lcom/sigmob/volley/toolbox/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sigmob/volley/toolbox/k$c;,
        Lcom/sigmob/volley/toolbox/k$a;,
        Lcom/sigmob/volley/toolbox/k$d;,
        Lcom/sigmob/volley/toolbox/k$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/sigmob/volley/n;

.field private final b:Lcom/sigmob/volley/toolbox/k$b;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sigmob/volley/toolbox/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private f:I

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sigmob/volley/n;Lcom/sigmob/volley/toolbox/k$b;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/k;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/k;->d:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sigmob/volley/toolbox/k;->e:Landroid/os/Handler;

    const/16 v0, 0x64

    iput v0, p0, Lcom/sigmob/volley/toolbox/k;->f:I

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k;->a:Lcom/sigmob/volley/n;

    iput-object p2, p0, Lcom/sigmob/volley/toolbox/k;->b:Lcom/sigmob/volley/toolbox/k$b;

    return-void
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/k;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method private static a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
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

    move-result-object p1

    const-string v0, "#H"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "#S"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/toolbox/k;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method private a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$a;)V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sigmob/volley/toolbox/k;->g:Ljava/lang/Runnable;

    if-nez p1, :cond_18

    new-instance p1, Lcom/sigmob/volley/toolbox/k$3;

    invoke-direct {p1, p0}, Lcom/sigmob/volley/toolbox/k$3;-><init>(Lcom/sigmob/volley/toolbox/k;)V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/k;->g:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/sigmob/volley/toolbox/k;->e:Landroid/os/Handler;

    iget v0, p0, Lcom/sigmob/volley/toolbox/k;->f:I

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method static synthetic b(Lcom/sigmob/volley/toolbox/k;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/sigmob/volley/toolbox/k;->c:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/sigmob/volley/m;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sigmob/volley/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v8, Lcom/sigmob/volley/toolbox/l;

    new-instance v2, Lcom/sigmob/volley/toolbox/k$1;

    invoke-direct {v2, p0, p5}, Lcom/sigmob/volley/toolbox/k$1;-><init>(Lcom/sigmob/volley/toolbox/k;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/sigmob/volley/toolbox/k$2;

    invoke-direct {v7, p0, p5}, Lcom/sigmob/volley/toolbox/k$2;-><init>(Lcom/sigmob/volley/toolbox/k;Ljava/lang/String;)V

    move-object v0, v8

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/sigmob/volley/toolbox/l;-><init>(Ljava/lang/String;Lcom/sigmob/volley/o$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/sigmob/volley/o$a;)V

    return-object v8
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)Lcom/sigmob/volley/toolbox/k$c;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;II)Lcom/sigmob/volley/toolbox/k$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;II)Lcom/sigmob/volley/toolbox/k$c;
    .registers 11

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;)Lcom/sigmob/volley/toolbox/k$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;IILandroid/widget/ImageView$ScaleType;)Lcom/sigmob/volley/toolbox/k$c;
    .registers 21

    move-object v6, p0

    move-object/from16 v7, p2

    invoke-static {}, Lcom/sigmob/volley/toolbox/o;->a()V

    move-object/from16 v8, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static {v8, v9, v10, v11}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v6, Lcom/sigmob/volley/toolbox/k;->b:Lcom/sigmob/volley/toolbox/k$b;

    invoke-interface {v0, v12}, Lcom/sigmob/volley/toolbox/k$b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v13, 0x1

    if-eqz v2, :cond_2a

    new-instance v9, Lcom/sigmob/volley/toolbox/k$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/volley/toolbox/k$c;-><init>(Lcom/sigmob/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)V

    invoke-interface {v7, v9, v13}, Lcom/sigmob/volley/toolbox/k$d;->a(Lcom/sigmob/volley/toolbox/k$c;Z)V

    return-object v9

    :cond_2a
    new-instance v14, Lcom/sigmob/volley/toolbox/k$c;

    const/4 v2, 0x0

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object v4, v12

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sigmob/volley/toolbox/k$c;-><init>(Lcom/sigmob/volley/toolbox/k;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$d;)V

    invoke-interface {v7, v14, v13}, Lcom/sigmob/volley/toolbox/k$d;->a(Lcom/sigmob/volley/toolbox/k$c;Z)V

    iget-object v0, v6, Lcom/sigmob/volley/toolbox/k;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/k$a;

    if-eqz v0, :cond_48

    invoke-virtual {v0, v14}, Lcom/sigmob/volley/toolbox/k$a;->a(Lcom/sigmob/volley/toolbox/k$c;)V

    return-object v14

    :cond_48
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/sigmob/volley/m;

    move-result-object v0

    iget-object v1, v6, Lcom/sigmob/volley/toolbox/k;->a:Lcom/sigmob/volley/n;

    if-eqz v1, :cond_67

    invoke-virtual {v1, v0}, Lcom/sigmob/volley/n;->a(Lcom/sigmob/volley/m;)Lcom/sigmob/volley/m;

    iget-object v1, v6, Lcom/sigmob/volley/toolbox/k;->c:Ljava/util/HashMap;

    new-instance v2, Lcom/sigmob/volley/toolbox/k$a;

    invoke-direct {v2, v0, v14}, Lcom/sigmob/volley/toolbox/k$a;-><init>(Lcom/sigmob/volley/m;Lcom/sigmob/volley/toolbox/k$c;)V

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    return-object v14
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k;->b:Lcom/sigmob/volley/toolbox/k$b;

    invoke-interface {v0, p1, p2}, Lcom/sigmob/volley/toolbox/k$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/k$a;

    if-eqz v0, :cond_15

    invoke-static {v0, p2}, Lcom/sigmob/volley/toolbox/k$a;->a(Lcom/sigmob/volley/toolbox/k$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$a;)V

    :cond_15
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/sigmob/volley/t;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/k;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/volley/toolbox/k$a;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Lcom/sigmob/volley/toolbox/k$a;->a(Lcom/sigmob/volley/t;)V

    invoke-direct {p0, p1, v0}, Lcom/sigmob/volley/toolbox/k;->a(Ljava/lang/String;Lcom/sigmob/volley/toolbox/k$a;)V

    :cond_10
    return-void
.end method
