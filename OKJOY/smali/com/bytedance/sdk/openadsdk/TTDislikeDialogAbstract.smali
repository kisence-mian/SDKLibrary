.class public abstract Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.super Landroid/app/Dialog;
.source "TTDislikeDialogAbstract.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method private a()V
    .registers 6

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez v0, :cond_5

    .line 71
    :cond_4
    return-void

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getTTDislikeListViewIds()[I

    move-result-object v2

    .line 55
    if-eqz v2, :cond_12

    array-length v0, v2

    if-gtz v0, :cond_1a

    .line 56
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dislike\u9009\u9879\u5217\u8868\u4e3a\u7a7a\uff0c\u8bf7\u8bbe\u7f6eTTDislikeListView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1a
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v3, :cond_4

    aget v0, v2, v1

    .line 59
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    if-nez v0, :cond_31

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getTTDislikeListViewIds\u63d0\u4f9b\u7684id\u627e\u4e0d\u5230view\uff0c\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_31
    instance-of v4, v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-nez v4, :cond_3d

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getTTDislikeListViewIds\u627e\u5230\u7684view\u7c7b\u578b\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_3d
    check-cast v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 68
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public abstract getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract getTTDislikeListViewIds()[I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    if-nez v0, :cond_23

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getLayoutId\u5e03\u5c40\u6587\u4ef6id\u53ef\u80fd\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_23
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    if-eqz v0, :cond_32

    :goto_2b
    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a()V

    .line 45
    return-void

    .line 42
    :cond_32
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_2b
.end method

.method public setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 75
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a()V

    .line 76
    return-void
.end method
