.class public Lcom/bytedance/sdk/openadsdk/core/n;
.super Landroid/app/Dialog;
.source "InsertAdDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/n$a;
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

.field private h:Lcom/bytedance/sdk/openadsdk/core/n$a;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/n;-><init>(Landroid/content/Context;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 40
    if-nez p2, :cond_8

    const-string p2, "tt_wg_insert_dialog"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->i:Z

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/n;)Lcom/bytedance/sdk/openadsdk/core/n$a;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->h:Lcom/bytedance/sdk/openadsdk/core/n$a;

    return-object p0
.end method

.method private a()V
    .registers 5

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/n;->setCancelable(Z)V

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_layout"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Landroid/view/View;

    .line 67
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/n;->setContentView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_img"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/widget/ImageView;

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const-string v3, "tt_insert_dislike_icon_img"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/widget/ImageView;

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_logo"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Landroid/widget/ImageView;

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const-string v3, "tt_insert_ad_text"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->f:Landroid/widget/TextView;

    .line 75
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const-string v3, "tt_insert_express_ad_fl"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    .line 78
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    .line 79
    div-int/lit8 v2, v1, 0x3

    .line 80
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 83
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 84
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 86
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->i:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_a1

    move v2, v3

    goto :goto_a2

    :cond_a1
    move v2, v0

    :goto_a2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->i:Z

    if-eqz v2, :cond_b2

    move v2, v3

    goto :goto_b3

    :cond_b2
    move v2, v0

    :goto_b3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->f:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->i:Z

    if-eqz v2, :cond_be

    move v2, v3

    goto :goto_bf

    :cond_be
    move v2, v0

    :goto_bf
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->i:Z

    if-eqz v2, :cond_c9

    goto :goto_ca

    :cond_c9
    move v0, v3

    :goto_ca
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0, v0, v0}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a(Landroid/view/View;IIII)V

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/n$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/n$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/n$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/n$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private b()V
    .registers 4

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_52

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 138
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    if-nez v2, :cond_17

    .line 139
    return-void

    .line 142
    :cond_17
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    .line 143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->m()Z

    move-result v2

    if-nez v2, :cond_20

    .line 144
    return-void

    .line 147
    :cond_20
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 148
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->b:Landroid/content/Context;

    const-string v2, "tt_bu_close"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_51

    .line 155
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/n$3;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/n$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/n;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_53

    .line 166
    :cond_51
    goto :goto_54

    .line 134
    :cond_52
    :goto_52
    return-void

    .line 165
    :catchall_53
    move-exception v0

    .line 167
    :goto_54
    return-void
.end method


# virtual methods
.method public a(ZLcom/bytedance/sdk/openadsdk/core/n$a;)V
    .registers 5

    .line 52
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->i:Z

    .line 53
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->h:Lcom/bytedance/sdk/openadsdk/core/n$a;

    .line 55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/n;->a()V

    .line 57
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->h:Lcom/bytedance/sdk/openadsdk/core/n$a;

    if-eqz p1, :cond_14

    .line 58
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/n;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/n;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/n;->g:Landroid/widget/FrameLayout;

    invoke-interface {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/n$a;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 60
    :cond_14
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 120
    return-void
.end method

.method public show()V
    .registers 1

    .line 126
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/n;->b()V

    .line 128
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 129
    return-void
.end method
