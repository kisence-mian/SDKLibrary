.class public abstract Lcom/bytedance/sdk/openadsdk/core/a/e;
.super Lcom/bytedance/sdk/openadsdk/core/a/a;
.source "RewardBarClickListener.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/d/k;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .registers 6

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/e;->a_(Landroid/view/View;IIII)V

    .line 24
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;IIII)V

    .line 25
    return-void
.end method

.method protected abstract a_(Landroid/view/View;IIII)V
.end method
