.class public Lcom/bytedance/sdk/openadsdk/core/m;
.super Landroid/app/Dialog;
.source "InsertAdDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/m$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Lcom/bytedance/sdk/openadsdk/core/m$a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/m;-><init>(Landroid/content/Context;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 40
    if-nez p2, :cond_8

    const-string v0, "tt_wg_insert_dialog"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ab;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->i:Z

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/m;)Lcom/bytedance/sdk/openadsdk/core/m$a;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:Lcom/bytedance/sdk/openadsdk/core/m$a;

    return-object v0
.end method

.method private a()V
    .registers 6

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/m;->setCancelable(Z)V

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const-string v4, "tt_insert_ad_layout"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/m;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const-string v4, "tt_insert_ad_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const-string v4, "tt_insert_dislike_icon_img"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const-string v4, "tt_insert_ad_logo"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Landroid/widget/ImageView;

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const-string v4, "tt_insert_ad_text"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->a:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const-string v4, "tt_insert_express_ad_fl"

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->c(Landroid/content/Context;)I

    move-result v0

    .line 79
    div-int/lit8 v3, v0, 0x3

    .line 80
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 86
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->i:Z

    if-eqz v0, :cond_e0

    move v0, v1

    :goto_a2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->i:Z

    if-eqz v0, :cond_e2

    move v0, v1

    :goto_b1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->i:Z

    if-eqz v0, :cond_e4

    move v0, v1

    :goto_bb
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->i:Z

    if-eqz v3, :cond_e6

    :goto_c4
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ai;->a(Landroid/view/View;IIII)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/m$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/m$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/m;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void

    :cond_e0
    move v0, v2

    .line 86
    goto :goto_a2

    :cond_e2
    move v0, v2

    .line 88
    goto :goto_b1

    :cond_e4
    move v0, v2

    .line 89
    goto :goto_bb

    :cond_e6
    move v2, v1

    .line 90
    goto :goto_c4
.end method

.method private b()V
    .registers 4

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_d

    .line 154
    :cond_c
    :goto_c
    return-void

    .line 129
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 130
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-eqz v1, :cond_c

    .line 134
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 135
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->m()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 139
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->e:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->b:Landroid/content/Context;

    const-string v2, "tt_bu_close"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ab;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_c

    .line 147
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:Lcom/bytedance/sdk/openadsdk/core/m$a;

    if-eqz v1, :cond_c

    .line 148
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:Lcom/bytedance/sdk/openadsdk/core/m$a;

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/m$a;->a(Landroid/view/View;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_c

    .line 152
    :catch_5a
    move-exception v0

    goto :goto_c
.end method


# virtual methods
.method public a(ZLcom/bytedance/sdk/openadsdk/core/m$a;)V
    .registers 7

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->i:Z

    .line 53
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:Lcom/bytedance/sdk/openadsdk/core/m$a;

    .line 55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->a()V

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:Lcom/bytedance/sdk/openadsdk/core/m$a;

    if-eqz v0, :cond_16

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/m;->h:Lcom/bytedance/sdk/openadsdk/core/m$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/m;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/m;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/m;->g:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/m$a;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 60
    :cond_16
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 112
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/m;->b()V

    .line 120
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 121
    return-void
.end method
