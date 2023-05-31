.class public Lcom/ksad/lottie/n/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ksad/lottie/n/a/m;
.implements Lcom/ksad/lottie/n/a/i;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Path;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/ksad/lottie/model/content/MergePaths;


# direct methods
.method public constructor <init>(Lcom/ksad/lottie/model/content/MergePaths;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/k;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/k;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/k;->c:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2b

    invoke-virtual {p1}, Lcom/ksad/lottie/model/content/MergePaths;->b()Ljava/lang/String;

    iput-object p1, p0, Lcom/ksad/lottie/n/a/k;->e:Lcom/ksad/lottie/model/content/MergePaths;

    return-void

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Merge paths are not supported pre-KitKat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lcom/ksad/lottie/n/a/k;->c:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1f
    return-void
.end method

.method private a(Landroid/graphics/Path$Op;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_14
    const/4 v0, 0x1

    if-lt v4, v0, :cond_59

    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    instance-of v1, v0, Lcom/ksad/lottie/n/a/c;

    if-eqz v1, :cond_4c

    check-cast v0, Lcom/ksad/lottie/n/a/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/c;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_30
    if-ltz v3, :cond_55

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v1}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/c;->d()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v6, p0, Lcom/ksad/lottie/n/a/k;->b:Landroid/graphics/Path;

    invoke-virtual {v6, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_30

    :cond_4c
    iget-object v1, p0, Lcom/ksad/lottie/n/a/k;->b:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_55
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_14

    :cond_59
    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    instance-of v1, v0, Lcom/ksad/lottie/n/a/c;

    if-eqz v1, :cond_8b

    check-cast v0, Lcom/ksad/lottie/n/a/c;

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/c;->c()Ljava/util/List;

    move-result-object v3

    :goto_6b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_94

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v1}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ksad/lottie/n/a/c;->d()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/ksad/lottie/n/a/k;->a:Landroid/graphics/Path;

    invoke-virtual {v4, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_6b

    :cond_8b
    iget-object v1, p0, Lcom/ksad/lottie/n/a/k;->a:Landroid/graphics/Path;

    invoke-interface {v0}, Lcom/ksad/lottie/n/a/m;->b()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :cond_94
    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->c:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/ksad/lottie/n/a/k;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/ksad/lottie/n/a/k;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v0, p1, p2}, Lcom/ksad/lottie/n/a/b;->a(Ljava/util/List;Ljava/util/List;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method public a(Ljava/util/ListIterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/ksad/lottie/n/a/b;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/n/a/b;

    instance-of v1, v0, Lcom/ksad/lottie/n/a/m;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/ksad/lottie/n/a/k;->d:Ljava/util/List;

    check-cast v0, Lcom/ksad/lottie/n/a/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_c

    :cond_27
    return-void
.end method

.method public b()Landroid/graphics/Path;
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget-object v0, Lcom/ksad/lottie/n/a/k$a;->a:[I

    iget-object v1, p0, Lcom/ksad/lottie/n/a/k;->e:Lcom/ksad/lottie/model/content/MergePaths;

    invoke-virtual {v1}, Lcom/ksad/lottie/model/content/MergePaths;->a()Lcom/ksad/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    :goto_16
    iget-object v0, p0, Lcom/ksad/lottie/n/a/k;->c:Landroid/graphics/Path;

    return-object v0

    :pswitch_19
    sget-object v0, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/ksad/lottie/n/a/k;->a(Landroid/graphics/Path$Op;)V

    goto :goto_16

    :pswitch_1f
    sget-object v0, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/ksad/lottie/n/a/k;->a(Landroid/graphics/Path$Op;)V

    goto :goto_16

    :pswitch_25
    sget-object v0, Landroid/graphics/Path$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/ksad/lottie/n/a/k;->a(Landroid/graphics/Path$Op;)V

    goto :goto_16

    :pswitch_2b
    sget-object v0, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-direct {p0, v0}, Lcom/ksad/lottie/n/a/k;->a(Landroid/graphics/Path$Op;)V

    goto :goto_16

    :pswitch_31
    invoke-direct {p0}, Lcom/ksad/lottie/n/a/k;->a()V

    goto :goto_16

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
    .end packed-switch
.end method
