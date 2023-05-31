.class public Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;
.super Landroid/widget/RelativeLayout;
.source "BaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/RelativeLayout;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Landroid/widget/RelativeLayout;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/ProgressBar;

.field protected g:Landroid/widget/FrameLayout;

.field protected h:Landroid/widget/LinearLayout;

.field protected i:Landroid/widget/RelativeLayout;

.field public style$161ffeb8:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_nativex_fullbasescreen"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 91
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 92
    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->i:Landroid/widget/RelativeLayout;

    .line 93
    if-eqz v1, :cond_cb

    .line 94
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_rl_playcontainer"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->a:Landroid/widget/RelativeLayout;

    .line 95
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_player_parent"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->b:Landroid/widget/RelativeLayout;

    .line 96
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_rl_close"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->c:Landroid/widget/RelativeLayout;

    .line 97
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_iv_close"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->d:Landroid/widget/ImageView;

    .line 98
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_tv_install"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->e:Landroid/widget/TextView;

    .line 99
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_pb_loading"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->f:Landroid/widget/ProgressBar;

    .line 100
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_animation_content"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->g:Landroid/widget/FrameLayout;

    .line 101
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_animation_player"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->h:Landroid/widget/LinearLayout;

    .line 102
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :cond_cb
    return-void
.end method


# virtual methods
.method public getMintegralFullClose()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMintegralFullIvClose()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMintegralFullPb()Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getMintegralFullPlayContainer()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMintegralFullPlayerParent()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getMintegralFullTvInstall()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStytle$21377bb9()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->style$161ffeb8:I

    return v0
.end method

.method public getmAnimationContent()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getmAnimationPlayer()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setStytle$64568c2d(I)V
    .registers 2

    .prologue
    .line 160
    iput p1, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;->style$161ffeb8:I

    .line 161
    return-void
.end method
