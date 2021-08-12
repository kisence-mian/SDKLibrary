.class public Lcom/bytedance/sdk/openadsdk/core/o;
.super Ljava/lang/Object;
.source "InteractionManager.java"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
    .registers 6

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Ljava/util/List;

    .line 47
    const-string v0, "embeded_ad"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    .line 53
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 54
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Landroid/content/Context;

    .line 55
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Ljava/lang/String;

    .line 57
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->T()I

    move-result p2

    const/4 p4, 0x4

    if-ne p2, p4, :cond_25

    .line 60
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Ljava/lang/String;

    invoke-static {p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    .line 62
    :cond_25
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/TTNativeAd;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .registers 5

    .line 202
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 204
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_12

    .line 205
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    .line 202
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/o;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/openadsdk/core/o;)Landroid/content/Context;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/openadsdk/core/o;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/openadsdk/core/o;)Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_7

    .line 66
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/app/Activity;)V

    .line 68
    :cond_7
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .registers 4

    .line 71
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    if-eqz p2, :cond_9

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;->onAdCreativeClick(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 74
    :cond_9
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;",
            ")V"
        }
    .end annotation

    .line 82
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/o;->g:Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_9

    .line 84
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->b()V

    .line 86
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    .line 88
    if-nez v0, :cond_1e

    .line 89
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    :cond_1e
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a()V

    .line 93
    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefClickViews(Ljava/util/List;)V

    .line 94
    invoke-virtual {v0, p4}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setRefCreativeViews(Ljava/util/List;)V

    .line 96
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v1, :cond_2e

    .line 97
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Landroid/view/View;)V

    .line 100
    :cond_2e
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o;->e:Ljava/util/List;

    .line 102
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 103
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Landroid/view/View;)V

    .line 104
    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/a/b;->b(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 106
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 107
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/o$1;

    invoke-direct {v1, p0, p6}, Lcom/bytedance/sdk/openadsdk/core/o$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/a/b;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 117
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/a/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/o;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/o;->f:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/aj;->a(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/a/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;I)V

    .line 118
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Landroid/view/View;)V

    .line 119
    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->b(Landroid/view/View;)V

    .line 120
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;)V

    .line 121
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/o;->d:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V

    .line 122
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/o$2;

    invoke-direct {p5, p0, p6}, Lcom/bytedance/sdk/openadsdk/core/o$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/o;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/a/b$a;)V

    .line 131
    invoke-virtual {v0, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 132
    invoke-virtual {v0, p4, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/a/c;)V

    .line 134
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/o$3;

    invoke-direct {p2, p0, p1, p6}, Lcom/bytedance/sdk/openadsdk/core/o$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/o;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/TTNativeAd$AdInteractionListener;)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 197
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    .line 199
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;

    if-eqz v0, :cond_7

    .line 214
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;->a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V

    .line 216
    :cond_7
    return-void
.end method
