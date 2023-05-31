.class public Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;
.super Lcom/mintegral/msdk/video/module/MintegralBaseView;
.source "MintegralVastEndCardView.java"


# instance fields
.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralBaseView;->a()V

    .line 57
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->f:Z

    if-eqz v0, :cond_1b

    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->j:Landroid/view/View;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$1;-><init>(Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->k:Landroid/view/View;

    new-instance v1, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$2;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView$2;-><init>(Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_1b
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 35
    const-string v0, "mintegral_reward_endcard_vast"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findLayout(Ljava/lang/String;)I

    move-result v0

    .line 36
    if-ltz v0, :cond_6f

    .line 37
    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1079
    const-string v0, "mintegral_rl_content"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->i:Landroid/view/ViewGroup;

    .line 1080
    const-string v0, "mintegral_iv_vastclose"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->j:Landroid/view/View;

    .line 1081
    const-string v0, "mintegral_iv_vastok"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->k:Landroid/view/View;

    .line 1082
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->i:Landroid/view/ViewGroup;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->j:Landroid/view/View;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->k:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->isNotNULL([Landroid/view/View;)Z

    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->f:Z

    .line 39
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->a()V

    .line 2045
    iget-boolean v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->f:Z

    if-eqz v0, :cond_6f

    .line 2046
    invoke-virtual {p0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->setMatchParent()V

    .line 2047
    const-string v0, "mintegral_reward_endcard_vast_bg"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->findColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->setBackgroundResource(I)V

    .line 2048
    invoke-virtual {p0, v3}, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->setClickable(Z)V

    .line 2049
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2050
    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 42
    :cond_6f
    return-void
.end method

.method public notifyShowListener()V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/video/module/MintegralVastEndCardView;->e:Lcom/mintegral/msdk/video/module/a/a;

    const/16 v1, 0x6f

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mintegral/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 87
    return-void
.end method

.method public preLoadData()V
    .registers 1

    .prologue
    .line 76
    return-void
.end method
