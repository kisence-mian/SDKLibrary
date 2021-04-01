.class public Lcom/ksad/lottie/model/layer/Layer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/lottie/model/layer/Layer$MatteType;,
        Lcom/ksad/lottie/model/layer/Layer$LayerType;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ksad/lottie/d;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Lcom/ksad/lottie/model/layer/Layer$LayerType;

.field private final f:J

.field private final g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/ksad/lottie/p/h/l;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:F

.field private final n:F

.field private final o:I

.field private final p:I

.field private final q:Lcom/ksad/lottie/p/h/j;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final r:Lcom/ksad/lottie/p/h/k;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final s:Lcom/ksad/lottie/p/h/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Lcom/ksad/lottie/model/layer/Layer$MatteType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ksad/lottie/d;Ljava/lang/String;JLcom/ksad/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/ksad/lottie/p/h/l;IIIFFIILcom/ksad/lottie/p/h/j;Lcom/ksad/lottie/p/h/k;Ljava/util/List;Lcom/ksad/lottie/model/layer/Layer$MatteType;Lcom/ksad/lottie/p/h/b;)V
    .registers 25
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p19    # Lcom/ksad/lottie/p/h/j;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p20    # Lcom/ksad/lottie/p/h/k;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p23    # Lcom/ksad/lottie/p/h/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/b;",
            ">;",
            "Lcom/ksad/lottie/d;",
            "Ljava/lang/String;",
            "J",
            "Lcom/ksad/lottie/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/Mask;",
            ">;",
            "Lcom/ksad/lottie/p/h/l;",
            "IIIFFII",
            "Lcom/ksad/lottie/p/h/j;",
            "Lcom/ksad/lottie/p/h/k;",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/ksad/lottie/model/layer/Layer$MatteType;",
            "Lcom/ksad/lottie/p/h/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksad/lottie/model/layer/Layer;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/ksad/lottie/model/layer/Layer;->b:Lcom/ksad/lottie/d;

    iput-object p3, p0, Lcom/ksad/lottie/model/layer/Layer;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/ksad/lottie/model/layer/Layer;->d:J

    iput-object p6, p0, Lcom/ksad/lottie/model/layer/Layer;->e:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    iput-wide p7, p0, Lcom/ksad/lottie/model/layer/Layer;->f:J

    iput-object p9, p0, Lcom/ksad/lottie/model/layer/Layer;->g:Ljava/lang/String;

    iput-object p10, p0, Lcom/ksad/lottie/model/layer/Layer;->h:Ljava/util/List;

    iput-object p11, p0, Lcom/ksad/lottie/model/layer/Layer;->i:Lcom/ksad/lottie/p/h/l;

    iput p12, p0, Lcom/ksad/lottie/model/layer/Layer;->j:I

    iput p13, p0, Lcom/ksad/lottie/model/layer/Layer;->k:I

    iput p14, p0, Lcom/ksad/lottie/model/layer/Layer;->l:I

    move/from16 v0, p15

    iput v0, p0, Lcom/ksad/lottie/model/layer/Layer;->m:F

    move/from16 v0, p16

    iput v0, p0, Lcom/ksad/lottie/model/layer/Layer;->n:F

    move/from16 v0, p17

    iput v0, p0, Lcom/ksad/lottie/model/layer/Layer;->o:I

    move/from16 v0, p18

    iput v0, p0, Lcom/ksad/lottie/model/layer/Layer;->p:I

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->q:Lcom/ksad/lottie/p/h/j;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->r:Lcom/ksad/lottie/p/h/k;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->t:Ljava/util/List;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->u:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->s:Lcom/ksad/lottie/p/h/b;

    return-void
.end method


# virtual methods
.method a()Lcom/ksad/lottie/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->b:Lcom/ksad/lottie/d;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->b:Lcom/ksad/lottie/d;

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ksad/lottie/d;->a(J)Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v0

    if-eqz v0, :cond_5c

    const-string v2, "\t\tParents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/Layer;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->h()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ksad/lottie/d;->a(J)Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v0

    :goto_39
    if-eqz v0, :cond_53

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ksad/lottie/model/layer/Layer;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v0}, Lcom/ksad/lottie/model/layer/Layer;->h()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/ksad/lottie/d;->a(J)Lcom/ksad/lottie/model/layer/Layer;

    move-result-object v0

    goto :goto_39

    :cond_53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->o()I

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->n()I

    move-result v0

    if-eqz v0, :cond_c6

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/ksad/lottie/model/layer/Layer;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c6
    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fb

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_dd

    :cond_fb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/ksad/lottie/model/layer/Layer;->d:J

    return-wide v0
.end method

.method c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/s/a",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->t:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/ksad/lottie/model/layer/Layer$LayerType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->e:Lcom/ksad/lottie/model/layer/Layer$LayerType;

    return-object v0
.end method

.method e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->h:Ljava/util/List;

    return-object v0
.end method

.method f()Lcom/ksad/lottie/model/layer/Layer$MatteType;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->u:Lcom/ksad/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->c:Ljava/lang/String;

    return-object v0
.end method

.method h()J
    .registers 3

    iget-wide v0, p0, Lcom/ksad/lottie/model/layer/Layer;->f:J

    return-wide v0
.end method

.method i()I
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/layer/Layer;->p:I

    return v0
.end method

.method j()I
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/layer/Layer;->o:I

    return v0
.end method

.method k()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->g:Ljava/lang/String;

    return-object v0
.end method

.method l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ksad/lottie/model/content/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->a:Ljava/util/List;

    return-object v0
.end method

.method m()I
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/layer/Layer;->l:I

    return v0
.end method

.method n()I
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/layer/Layer;->k:I

    return v0
.end method

.method o()I
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/layer/Layer;->j:I

    return v0
.end method

.method p()F
    .registers 3

    iget v0, p0, Lcom/ksad/lottie/model/layer/Layer;->n:F

    iget-object v1, p0, Lcom/ksad/lottie/model/layer/Layer;->b:Lcom/ksad/lottie/d;

    invoke-virtual {v1}, Lcom/ksad/lottie/d;->d()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method q()Lcom/ksad/lottie/p/h/j;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->q:Lcom/ksad/lottie/p/h/j;

    return-object v0
.end method

.method r()Lcom/ksad/lottie/p/h/k;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->r:Lcom/ksad/lottie/p/h/k;

    return-object v0
.end method

.method s()Lcom/ksad/lottie/p/h/b;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->s:Lcom/ksad/lottie/p/h/b;

    return-object v0
.end method

.method t()F
    .registers 2

    iget v0, p0, Lcom/ksad/lottie/model/layer/Layer;->m:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/ksad/lottie/model/layer/Layer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lcom/ksad/lottie/p/h/l;
    .registers 2

    iget-object v0, p0, Lcom/ksad/lottie/model/layer/Layer;->i:Lcom/ksad/lottie/p/h/l;

    return-object v0
.end method
