.class public Lcom/ksad/lottie/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/ksad/lottie/l;

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/p/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/ksad/lottie/p/d;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/Rect;

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ksad/lottie/l;

    invoke-direct {v0}, Lcom/ksad/lottie/l;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/d;->a:Lcom/ksad/lottie/l;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ksad/lottie/d;->b:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/d;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(J)Lcom/ksad/lottie/model/layer/Layer;
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/d;->g:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/Layer;

    return-object v0
.end method

.method public a(Landroid/graphics/Rect;FFFLjava/util/List;Landroid/support/v4/util/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroid/support/v4/util/SparseArrayCompat;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/g;",
            ">;",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/ksad/lottie/p/d;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/p/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ksad/lottie/d;->i:Landroid/graphics/Rect;

    iput p2, p0, Lcom/ksad/lottie/d;->j:F

    iput p3, p0, Lcom/ksad/lottie/d;->k:F

    iput p4, p0, Lcom/ksad/lottie/d;->l:F

    iput-object p5, p0, Lcom/ksad/lottie/d;->h:Ljava/util/List;

    iput-object p6, p0, Lcom/ksad/lottie/d;->g:Landroid/support/v4/util/LongSparseArray;

    iput-object p7, p0, Lcom/ksad/lottie/d;->c:Ljava/util/Map;

    iput-object p8, p0, Lcom/ksad/lottie/d;->d:Ljava/util/Map;

    iput-object p9, p0, Lcom/ksad/lottie/d;->f:Landroid/support/v4/util/SparseArrayCompat;

    iput-object p10, p0, Lcom/ksad/lottie/d;->e:Ljava/util/Map;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "LOTTIE"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ksad/lottie/d;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ksad/lottie/d;->a:Lcom/ksad/lottie/l;

    invoke-virtual {v0, p1}, Lcom/ksad/lottie/l;->a(Z)V

    return-void
.end method

.method public b()Landroid/support/v4/util/SparseArrayCompat;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/ksad/lottie/p/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/d;->f:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public c()F
    .registers 3

    invoke-virtual {p0}, Lcom/ksad/lottie/d;->d()F

    move-result v0

    iget v1, p0, Lcom/ksad/lottie/d;->l:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public d()F
    .registers 3

    iget v0, p0, Lcom/ksad/lottie/d;->k:F

    iget v1, p0, Lcom/ksad/lottie/d;->j:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public e()F
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Lcom/ksad/lottie/d;->k:F

    return v0
.end method

.method public f()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/p/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/d;->e:Ljava/util/Map;

    return-object v0
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/d;->l:F

    return v0
.end method

.method public h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ksad/lottie/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/d;->d:Ljava/util/Map;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/d;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Lcom/ksad/lottie/l;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/d;->a:Lcom/ksad/lottie/l;

    return-object v0
.end method

.method public k()F
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Lcom/ksad/lottie/d;->j:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "LottieComposition:\n"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ksad/lottie/d;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/lottie/model/layer/Layer;

    const-string v3, "\t"

    invoke-virtual {v0, v3}, Lcom/ksad/lottie/model/layer/Layer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
