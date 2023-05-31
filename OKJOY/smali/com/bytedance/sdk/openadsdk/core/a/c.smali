.class public abstract Lcom/bytedance/sdk/openadsdk/core/a/c;
.super Ljava/lang/Object;
.source "InteractionListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/a/c$a;
    }
.end annotation


# static fields
.field protected static A:I

.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F

.field private static e:J


# instance fields
.field protected B:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:J

.field protected w:J

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const/16 v0, 0x8

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->A:I

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->A:I

    .line 35
    :cond_1d
    sput v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:F

    .line 36
    sput v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:F

    .line 37
    sput v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    .line 38
    sput v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->e:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->B:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;IIII)V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/j;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 47
    :goto_6
    return-void

    .line 46
    :cond_7
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->r:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->s:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->t:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->u:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/a/c;->a(Landroid/view/View;IIII)V

    goto :goto_6
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .prologue
    const/4 v8, 0x0

    .line 52
    const/4 v1, -0x1

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_cc

    .line 91
    :goto_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->B:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_31

    .line 92
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->B:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/a/c$a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    float-to-double v4, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/a/c$a;-><init>(IDDJ)V

    invoke-virtual {v9, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_31
    return v8

    .line 55
    :pswitch_32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->r:I

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->s:I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->v:J

    .line 58
    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->x:I

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->y:I

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->z:I

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->e:J

    move v1, v8

    .line 64
    goto :goto_9

    .line 66
    :pswitch_60
    sget v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    .line 67
    sget v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:F

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:F

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/a/c;->e:J

    sub-long/2addr v0, v2

    .line 71
    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_ae

    sget v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    sget v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->A:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_ab

    sget v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    sget v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->A:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ae

    .line 72
    :cond_ab
    const/4 v1, 0x1

    goto/16 :goto_9

    .line 75
    :cond_ae
    const/4 v1, 0x2

    .line 77
    goto/16 :goto_9

    .line 79
    :pswitch_b1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->t:I

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->u:I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->w:J

    .line 82
    const/4 v1, 0x3

    .line 83
    goto/16 :goto_9

    .line 86
    :pswitch_c8
    const/4 v1, 0x4

    goto/16 :goto_9

    .line 53
    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_32
        :pswitch_b1
        :pswitch_60
        :pswitch_c8
    .end packed-switch
.end method
