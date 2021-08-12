.class public Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;
.super Landroid/widget/FrameLayout;
.source "PlayableLoadingView.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .line 43
    const-string v0, "#0D1833"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setBackgroundColor(I)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setClickable(Z)V

    .line 45
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setVisibility(I)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "tt_playable_loading_layout"

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    const-string v0, "tt_playable_pb_view"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a:Landroid/widget/ProgressBar;

    .line 50
    const-string v0, "tt_playable_progress_tip"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->b:Landroid/widget/TextView;

    .line 51
    const-string v0, "tt_playable_play"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->c:Landroid/widget/TextView;

    .line 53
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 74
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public b()V
    .registers 2

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->setVisibility(I)V

    .line 79
    return-void
.end method

.method public getPlayView()Landroid/widget/TextView;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public setProgress(I)V
    .registers 6

    .line 57
    nop

    .line 58
    const/4 v0, 0x0

    if-gez p1, :cond_5

    .line 59
    move p1, v0

    .line 61
    :cond_5
    const/16 v1, 0x64

    if-le p1, v1, :cond_a

    .line 62
    move p1, v1

    .line 65
    :cond_a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->a:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_11

    .line 66
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 68
    :cond_11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/PlayableLoadingView;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_2b

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%d%%"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_2b
    return-void
.end method
