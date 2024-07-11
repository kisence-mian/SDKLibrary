.class public final Lcom/tapjoy/internal/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/tapjoy/internal/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/bd<",
            "Lcom/tapjoy/internal/ic;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/tapjoy/internal/z;

.field public b:Landroid/graphics/PointF;

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tapjoy/internal/ib;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Lcom/tapjoy/internal/ic$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/ic$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/ic;->d:Lcom/tapjoy/internal/bd;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/bi;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/tapjoy/internal/z;->a:Lcom/tapjoy/internal/z;

    iput-object v0, p0, Lcom/tapjoy/internal/ic;->a:Lcom/tapjoy/internal/z;

    .line 17
    nop

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/tapjoy/internal/ic;->c:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 21
    :goto_12
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 22
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "buttons"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 24
    nop

    .line 1089
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->k()Lcom/tapjoy/internal/bn;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bn;->a:Lcom/tapjoy/internal/bn;

    if-ne v0, v1, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 24
    :goto_30
    if-eqz v0, :cond_3a

    .line 25
    iget-object v0, p0, Lcom/tapjoy/internal/ic;->c:Ljava/util/ArrayList;

    sget-object v1, Lcom/tapjoy/internal/ib;->n:Lcom/tapjoy/internal/bd;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/bi;->a(Ljava/util/List;Lcom/tapjoy/internal/bd;)V

    goto :goto_12

    .line 28
    :cond_3a
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto :goto_12

    .line 31
    :cond_3e
    const-string v1, "window_aspect_ratio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 32
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->h()V

    .line 35
    :goto_54
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->j()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 36
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->l()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 38
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->p()D

    move-result-wide v1

    .line 39
    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 40
    goto :goto_54

    .line 41
    :cond_6e
    const-string v2, "height"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 42
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->p()D

    move-result-wide v1

    .line 43
    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 44
    goto :goto_54

    .line 46
    :cond_7e
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 48
    goto :goto_54

    .line 49
    :cond_82
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 51
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_94

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_94

    .line 52
    iput-object v0, p0, Lcom/tapjoy/internal/ic;->b:Landroid/graphics/PointF;

    .line 54
    :cond_94
    goto/16 :goto_12

    .line 56
    :cond_96
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    goto/16 :goto_12

    .line 59
    :cond_9b
    const-string v1, "orientation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 60
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->m()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 62
    sget-object v0, Lcom/tapjoy/internal/z;->c:Lcom/tapjoy/internal/z;

    iput-object v0, p0, Lcom/tapjoy/internal/ic;->a:Lcom/tapjoy/internal/z;

    goto/16 :goto_12

    .line 64
    :cond_b5
    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 65
    sget-object v0, Lcom/tapjoy/internal/z;->b:Lcom/tapjoy/internal/z;

    iput-object v0, p0, Lcom/tapjoy/internal/ic;->a:Lcom/tapjoy/internal/z;

    .line 67
    :cond_c1
    goto/16 :goto_12

    .line 69
    :cond_c3
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->s()V

    .line 71
    goto/16 :goto_12

    .line 73
    :cond_c8
    invoke-virtual {p1}, Lcom/tapjoy/internal/bi;->i()V

    .line 74
    return-void
.end method
