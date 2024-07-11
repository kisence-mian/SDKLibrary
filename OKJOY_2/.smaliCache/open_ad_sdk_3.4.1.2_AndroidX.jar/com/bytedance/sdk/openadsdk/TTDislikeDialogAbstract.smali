.class public abstract Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;
.super Landroid/app/Dialog;
.source "TTDislikeDialogAbstract.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/bytedance/sdk/openadsdk/core/d/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private a()V
    .registers 6

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 54
    return-void

    .line 56
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    if-nez v0, :cond_a

    .line 57
    return-void

    .line 59
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getTTDislikeListViewIds()[I

    move-result-object v0

    .line 60
    if-eqz v0, :cond_40

    array-length v1, v0

    if-lez v1, :cond_40

    .line 63
    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_3f

    aget v3, v0, v2

    .line 64
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_37

    .line 68
    instance-of v4, v3, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    if-eqz v4, :cond_2f

    .line 71
    check-cast v3, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;

    .line 72
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 69
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getTTDislikeListViewIds\u627e\u5230\u7684view\u7c7b\u578b\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getTTDislikeListViewIds\u63d0\u4f9b\u7684id\u627e\u4e0d\u5230view\uff0c\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3f
    return-void

    .line 61
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dislike\u9009\u9879\u5217\u8868\u4e3a\u7a7a\uff0c\u8bf7\u8bbe\u7f6eTTDislikeListView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_5

    .line 79
    return-void

    .line 81
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    if-nez v1, :cond_a

    .line 82
    return-void

    .line 84
    :cond_a
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->am()Lcom/bytedance/sdk/openadsdk/PersonalizationPrompt;

    move-result-object v0

    if-nez v0, :cond_11

    .line 85
    return-void

    .line 87
    :cond_11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getPersonalizationPromptIds()[I

    move-result-object v0

    .line 88
    if-eqz v0, :cond_35

    array-length v1, v0

    if-nez v1, :cond_1b

    goto :goto_35

    .line 91
    :cond_1b
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_34

    aget v3, v0, v2

    .line 92
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_31

    .line 94
    new-instance v4, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract$1;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract$1;-><init>(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 106
    :cond_34
    return-void

    .line 89
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public abstract getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract getPersonalizationPromptIds()[I
.end method

.method public abstract getTTDislikeListViewIds()[I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 36
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    .line 41
    if-eqz p1, :cond_31

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a:Landroid/view/View;

    if-eqz p1, :cond_21

    goto :goto_27

    :cond_21
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :goto_27
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a()V

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b()V

    .line 50
    return-void

    .line 42
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getLayoutId\u5e03\u5c40\u6587\u4ef6id\u53ef\u80fd\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 110
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->a()V

    .line 111
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->b()V

    .line 112
    return-void
.end method
