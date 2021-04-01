.class public Lcom/mintegral/msdk/video/module/MintegralPlayableView;
.super Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;
.source "MintegralPlayableView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public onBackPress()V
    .registers 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->onBackPress()V

    .line 43
    return-void
.end method

.method public preLoadData()V
    .registers 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->preLoadData()V

    .line 38
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/mintegral/msdk/video/module/MintegralH5EndCardView;->setLoadPlayable(Z)V

    .line 39
    return-void
.end method
