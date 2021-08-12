.class public Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;
.super Landroid/widget/ListView;
.source "TTDislikeListView.java"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field private b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView$1;-><init>(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 39
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a()V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)Lcom/bytedance/sdk/openadsdk/core/d/l;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    return-object p0
.end method

.method private a()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 44
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/dislike/TTDislikeListView;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 53
    return-void
.end method
