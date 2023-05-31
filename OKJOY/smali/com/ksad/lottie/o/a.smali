.class public Lcom/ksad/lottie/o/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/ksad/lottie/p/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksad/lottie/p/g",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ksad/lottie/p/g",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/res/AssetManager;

.field private e:Lcom/ksad/lottie/a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/ksad/lottie/a;)V
    .registers 5
    .param p2    # Lcom/ksad/lottie/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ksad/lottie/p/g;

    invoke-direct {v0}, Lcom/ksad/lottie/p/g;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/o/a;->a:Lcom/ksad/lottie/p/g;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/o/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/o/a;->c:Ljava/util/Map;

    const-string v0, ".ttf"

    iput-object v0, p0, Lcom/ksad/lottie/o/a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/ksad/lottie/o/a;->e:Lcom/ksad/lottie/a;

    instance-of v0, p1, Landroid/view/View;

    if-nez v0, :cond_2d

    const-string v0, "LOTTIE"

    const-string v1, "LottieDrawable must be inside of a view for images to work."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ksad/lottie/o/a;->d:Landroid/content/res/AssetManager;

    :goto_2c
    return-void

    :cond_2d
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/lottie/o/a;->d:Landroid/content/res/AssetManager;

    goto :goto_2c
.end method

.method private a(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "Italic"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Bold"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v1, :cond_19

    if-eqz v2, :cond_19

    const/4 v0, 0x3

    :cond_12
    :goto_12
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    if-ne v1, v0, :cond_21

    :goto_18
    return-object p1

    :cond_19
    if-eqz v1, :cond_1d

    const/4 v0, 0x2

    goto :goto_12

    :cond_1d
    if-eqz v2, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :cond_21
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_18
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/o/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_c

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/ksad/lottie/o/a;->e:Lcom/ksad/lottie/a;

    if-nez v0, :cond_3b

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/a;->b(Ljava/lang/String;)Ljava/lang/String;

    throw v1

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/o/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/o/a;->d:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/o/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_3b
    invoke-virtual {v0, p1}, Lcom/ksad/lottie/a;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 6

    iget-object v0, p0, Lcom/ksad/lottie/o/a;->a:Lcom/ksad/lottie/p/g;

    invoke-virtual {v0, p1, p2}, Lcom/ksad/lottie/p/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ksad/lottie/o/a;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/ksad/lottie/o/a;->a:Lcom/ksad/lottie/p/g;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_12

    :goto_11
    return-object v0

    :cond_12
    invoke-direct {p0, p1}, Lcom/ksad/lottie/o/a;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/ksad/lottie/o/a;->a(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/lottie/o/a;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/ksad/lottie/o/a;->a:Lcom/ksad/lottie/p/g;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public a(Lcom/ksad/lottie/a;)V
    .registers 2
    .param p1    # Lcom/ksad/lottie/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ksad/lottie/o/a;->e:Lcom/ksad/lottie/a;

    return-void
.end method
