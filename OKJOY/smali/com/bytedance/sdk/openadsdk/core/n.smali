.class public Lcom/bytedance/sdk/openadsdk/core/n;
.super Ljava/lang/Object;
.source "InteractionManager.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "embeded_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 42
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/content/Context;

    .line 44
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->B()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 51
    :cond_24
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/n;)Lcom/bytedance/sdk/openadsdk/TTNativeAd;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .prologue
    .line 158
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_17

    .line 159
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 160
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_13

    .line 161
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    .line 164
    :goto_12
    return-object v0

    .line 158
    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 164
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/n;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/n;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/n;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/n;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 57
    :cond_9
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 13
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/n;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1e

    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_1e
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a()V

    .line 76
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefClickViews(Ljava/util/List;)V

    .line 77
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefCreativeViews(Ljava/util/List;)V

    .line 79
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_30

    .line 80
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 84
    :cond_30
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;)V

    .line 86
    invoke-virtual {v1, p4}, Lcom/bytedance/sdk/openadsdk/core/a/b;->b(Landroid/view/View;)V

    .line 87
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 88
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 89
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/n$1;

    invoke-direct {v2, p0, p5}, Lcom/bytedance/sdk/openadsdk/core/n$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/n;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 99
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 101
    invoke-virtual {v2, p4}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 102
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 103
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 104
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/n$2;

    invoke-direct {v3, p0, p5}, Lcom/bytedance/sdk/openadsdk/core/n$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/n;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 113
    invoke-virtual {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 114
    invoke-virtual {v0, p3, v2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 116
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/n$3;

    invoke-direct {v1, p0, p5}, Lcom/bytedance/sdk/openadsdk/core/n$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/n;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 153
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 155
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 172
    :cond_9
    return-void
.end method
