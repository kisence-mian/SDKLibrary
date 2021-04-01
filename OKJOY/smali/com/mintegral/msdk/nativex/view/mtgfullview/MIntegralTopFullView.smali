.class public Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;
.super Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;
.source "MIntegralTopFullView.java"


# static fields
.field public static final INTERFACE_RESULT:Ljava/lang/String;


# instance fields
.field protected j:Landroid/widget/ImageView;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/TextView;

.field protected m:Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WithResault"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->INTERFACE_RESULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 52
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/nativex/view/mtgfullview/BaseView;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mintegral_nativex_fullscreen_top"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_83

    .line 56
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_tv_display_icon"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->j:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_tv_display_title"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->k:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_tv_display_description"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->l:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mintegral_full_tv_feeds_star"

    const-string v3, "id"

    invoke-static {v0, v2, v3}, Lcom/mintegral/msdk/base/utils/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;

    iput-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->m:Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;

    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->l:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    invoke-virtual {p0}, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->updateLayoutParams()V

    .line 66
    :cond_83
    return-void
.end method


# virtual methods
.method public getMintegralFullViewDisplayDscription()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMintegralFullViewDisplayIcon()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMintegralFullViewDisplayTitle()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStarLevelLayoutView()Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->m:Lcom/mintegral/msdk/nativex/view/mtgfullview/StarLevelLayoutView;

    return-object v0
.end method

.method public updateLayoutParams()V
    .registers 5

    .prologue
    const/16 v3, 0xa

    const/4 v2, -0x1

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 77
    iget-object v1, p0, Lcom/mintegral/msdk/nativex/view/mtgfullview/MIntegralTopFullView;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void
.end method
