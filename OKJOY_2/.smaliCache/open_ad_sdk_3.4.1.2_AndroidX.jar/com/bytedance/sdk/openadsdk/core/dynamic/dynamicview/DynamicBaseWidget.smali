.class public abstract Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;
.super Landroid/view/ViewGroup;
.source "DynamicBaseWidget.java"


# instance fields
.field protected a:F

.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:Landroid/content/Context;

.field protected j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

.field protected k:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

.field protected l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

.field protected n:Landroid/view/View;

.field protected o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->p:Z

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->i:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->m:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    .line 45
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->k:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

    .line 46
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->a()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->a:F

    .line 47
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->b()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->b:F

    .line 48
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->c()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->c:F

    .line 49
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->d()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->d:F

    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->i:Landroid/content/Context;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->a:F

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->g:I

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->i:Landroid/content/Context;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->b:F

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->h:I

    .line 52
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->i:Landroid/content/Context;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->c:F

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->e:I

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->i:Landroid/content/Context;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->d:F

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->f:I

    .line 54
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;->e()Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;-><init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    .line 55
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->k()I

    move-result p1

    if-lez p1, :cond_62

    goto :goto_63

    :cond_62
    const/4 v0, 0x0

    :goto_63
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->o:Z

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;)V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->l:Ljava/util/List;

    if-nez v0, :cond_b

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->l:Ljava/util/List;

    .line 66
    :cond_b
    if-nez p1, :cond_e

    .line 67
    return-void

    .line 69
    :cond_e
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->o:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->setShouldInvisible(Z)V

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public a()Z
    .registers 4

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->d()Z

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->c()Z

    move-result v1

    .line 80
    const/4 v2, 0x0

    if-eqz v0, :cond_d

    if-nez v1, :cond_f

    .line 81
    :cond_d
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->p:Z

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->l:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;

    .line 85
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->a()Z

    move-result v1

    .line 86
    if-nez v1, :cond_2b

    .line 87
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->p:Z

    .line 89
    :cond_2b
    goto :goto_17

    .line 91
    :cond_2c
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->p:Z

    return v0
.end method

.method abstract b()Z
.end method

.method protected c()Z
    .registers 2

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected d()Z
    .registers 7

    .line 104
    const-string v0, "DynamicBaseWidget"

    const-string v1, ","

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->b()Z

    move-result v2

    .line 106
    :try_start_8
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->e:I

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->f:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget mDynamicView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->n:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDynamicView x,y,w,h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->a:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->b:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->h:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->g:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->m:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6c} :catch_6d

    .line 114
    goto :goto_6f

    .line 112
    :catch_6d
    move-exception v0

    .line 113
    const/4 v2, 0x0

    .line 115
    :goto_6f
    return v2
.end method

.method protected e()Z
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->p()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    .line 122
    :cond_b
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_d
    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method protected getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 134
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 136
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->l()F

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 138
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->n()F

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 140
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 141
    return-object v0
.end method

.method public getClickArea()I
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->j:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->p()I

    move-result v0

    return v0
.end method

.method public getDynamicClickListener()Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->m:Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicRootView;->getDynamicClickListener()Lcom/bytedance/sdk/openadsdk/core/dynamic/d/a;

    move-result-object v0

    return-object v0
.end method

.method public setLayoutUnit(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->k:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

    .line 60
    return-void
.end method

.method public setShouldInvisible(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/dynamicview/DynamicBaseWidget;->o:Z

    .line 75
    return-void
.end method
