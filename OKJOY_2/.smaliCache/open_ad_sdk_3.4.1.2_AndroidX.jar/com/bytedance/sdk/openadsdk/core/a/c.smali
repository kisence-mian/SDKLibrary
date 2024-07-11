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
.field protected static B:I

.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F

.field private static e:J


# instance fields
.field protected A:I

.field protected C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:J

.field protected x:J

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 25
    const/16 v0, 0x8

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->B:I

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->B:I

    .line 35
    :cond_1c
    const/4 v0, 0x0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:F

    .line 36
    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:F

    .line 37
    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    .line 38
    sput v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    .line 39
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/a/c;->e:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->C:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;IIII)V
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/g;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 44
    return-void

    .line 46
    :cond_7
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->s:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->t:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->u:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->v:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/a/c;->a(Landroid/view/View;IIII)V

    .line 47
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    .line 52
    nop

    .line 53
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_d0

    const/4 p1, -0x1

    move v2, p1

    goto/16 :goto_a5

    .line 86
    :pswitch_d
    const/4 p1, 0x4

    move v2, p1

    goto/16 :goto_a5

    .line 66
    :pswitch_11
    sget p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr p1, v1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    .line 67
    sget p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr p1, v1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->a:F

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->b:F

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/bytedance/sdk/openadsdk/core/a/c;->e:J

    sub-long/2addr v1, v3

    .line 71
    const-wide/16 v3, 0xc8

    cmp-long p1, v1, v3

    if-lez p1, :cond_5d

    sget p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->c:F

    sget v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->B:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_5a

    sget p1, Lcom/bytedance/sdk/openadsdk/core/a/c;->d:F

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5d

    .line 72
    :cond_5a
    const/4 p1, 0x1

    move v2, p1

    goto :goto_a5

    .line 75
    :cond_5d
    const/4 p1, 0x2

    .line 77
    move v2, p1

    goto :goto_a5

    .line 79
    :pswitch_60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->u:I

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->v:I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->x:J

    .line 82
    const/4 p1, 0x3

    .line 83
    move v2, p1

    goto :goto_a5

    .line 55
    :pswitch_77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->s:I

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->t:I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->w:J

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->y:I

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->z:I

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->A:I

    .line 61
    nop

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/sdk/openadsdk/core/a/c;->e:J

    .line 64
    move v2, v0

    .line 91
    :goto_a5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->C:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_ce

    .line 92
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/a/c;->C:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/a/c$a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    float-to-double v3, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    float-to-double v5, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/a/c$a;-><init>(IDDJ)V

    invoke-virtual {p1, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_ce
    return v0

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_77
        :pswitch_60
        :pswitch_11
        :pswitch_d
    .end packed-switch
.end method
