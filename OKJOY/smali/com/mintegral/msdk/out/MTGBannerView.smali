.class public Lcom/mintegral/msdk/out/MTGBannerView;
.super Landroid/widget/RelativeLayout;
.source "MTGBannerView.java"


# instance fields
.field private a:Lcom/mintegral/msdk/mtgbanner/a/a;

.field private b:Lcom/mintegral/msdk/out/BannerAdListener;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mintegral/msdk/out/MTGBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mintegral/msdk/out/MTGBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-boolean v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->c:Z

    .line 18
    iput-boolean v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->d:Z

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/mintegral/msdk/out/MTGBannerView;)Lcom/mintegral/msdk/mtgbanner/a/a;
    .registers 2

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 162
    new-instance v0, Lcom/mintegral/msdk/out/MTGBannerView$1;

    invoke-direct {v0, p0}, Lcom/mintegral/msdk/out/MTGBannerView$1;-><init>(Lcom/mintegral/msdk/out/MTGBannerView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/mintegral/msdk/out/MTGBannerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method private a(Z)V
    .registers 4

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->c:Z

    .line 128
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_d

    .line 129
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    iget-boolean v1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->c:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Z)V

    .line 131
    :cond_d
    return-void
.end method


# virtual methods
.method public init(Lcom/mintegral/msdk/out/BannerSize;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 36
    new-instance v0, Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/mintegral/msdk/mtgbanner/a/a;-><init>(Lcom/mintegral/msdk/out/MTGBannerView;Lcom/mintegral/msdk/out/BannerSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    .line 37
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    iget-boolean v1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->d:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->c(Z)V

    .line 38
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    iget-boolean v1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->c:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Z)V

    .line 39
    return-void
.end method

.method public load()V
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_13

    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    iget-boolean v1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->c:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Z)V

    .line 70
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Ljava/lang/String;)V

    .line 76
    :cond_12
    :goto_12
    return-void

    .line 72
    :cond_13
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    if-eqz v0, :cond_12

    .line 73
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    const-string v1, "banner controler init error\uff0cplease check it"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadFailed(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public loadFromBid(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_23

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 81
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    iget-boolean v1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->c:Z

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->b(Z)V

    .line 82
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Ljava/lang/String;)V

    .line 93
    :cond_16
    :goto_16
    return-void

    .line 84
    :cond_17
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    if-eqz v0, :cond_16

    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    const-string v1, "banner token is null or empty\uff0cplease check it"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadFailed(Ljava/lang/String;)V

    goto :goto_16

    .line 89
    :cond_23
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    if-eqz v0, :cond_16

    .line 90
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    const-string v1, "banner controler init error\uff0cplease check it"

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/BannerAdListener;->onLoadFailed(Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/out/MTGBannerView;->a(Z)V

    .line 117
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mintegral/msdk/out/MTGBannerView;->a(Z)V

    .line 123
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 175
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_c

    .line 176
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(IIII)V

    .line 178
    :cond_c
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 150
    if-nez p2, :cond_13

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->d:Z

    .line 151
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_12

    .line 152
    if-nez p2, :cond_15

    .line 153
    invoke-direct {p0}, Lcom/mintegral/msdk/out/MTGBannerView;->a()V

    .line 158
    :cond_12
    :goto_12
    return-void

    :cond_13
    move v0, v1

    .line 150
    goto :goto_7

    .line 155
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->c(Z)V

    goto :goto_12
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 136
    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->d:Z

    .line 137
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_12

    .line 138
    if-nez p1, :cond_15

    .line 140
    invoke-direct {p0}, Lcom/mintegral/msdk/out/MTGBannerView;->a()V

    .line 145
    :cond_12
    :goto_12
    return-void

    :cond_13
    move v0, v1

    .line 136
    goto :goto_7

    .line 142
    :cond_15
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->c(Z)V

    goto :goto_12
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    if-eqz v0, :cond_7

    .line 104
    iput-object v1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    .line 106
    :cond_7
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_15

    .line 107
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/out/BannerAdListener;)V

    .line 108
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgbanner/a/a;->a()V

    .line 110
    :cond_15
    invoke-virtual {p0}, Lcom/mintegral/msdk/out/MTGBannerView;->removeAllViews()V

    .line 111
    return-void
.end method

.method public setAllowShowCloseBtn(Z)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Z)V

    .line 65
    :cond_9
    return-void
.end method

.method public setBannerAdListener(Lcom/mintegral/msdk/out/BannerAdListener;)V
    .registers 3

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mintegral/msdk/out/MTGBannerView;->b:Lcom/mintegral/msdk/out/BannerAdListener;

    .line 97
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_b

    .line 98
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/out/BannerAdListener;)V

    .line 100
    :cond_b
    return-void
.end method

.method public setRefreshTime(I)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(I)V

    .line 55
    :cond_9
    return-void
.end method

.method public updateBannerSize(Lcom/mintegral/msdk/out/BannerSize;)V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcom/mintegral/msdk/out/MTGBannerView;->a:Lcom/mintegral/msdk/mtgbanner/a/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/mtgbanner/a/a;->a(Lcom/mintegral/msdk/out/BannerSize;)V

    .line 45
    :cond_9
    return-void
.end method
