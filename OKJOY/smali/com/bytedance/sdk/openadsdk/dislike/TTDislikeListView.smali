.class public Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;
.super Landroid/widget/ListView;
.source "TTDislikeListView.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field private b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 28
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance v0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)Lcom/bytedance/sdk/openadsdk/core/d/k;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    return-object v0
.end method

.method private a()V
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a:Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 43
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .param p1    # Landroid/widget/AdapterView$OnItemClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 52
    return-void
.end method
