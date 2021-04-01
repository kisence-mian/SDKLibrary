.class public final Lcom/mintegral/msdk/video/js/a/l;
.super Lcom/mintegral/msdk/video/js/a/f;
.source "JSVideoModule.java"


# instance fields
.field private a:Lcom/mintegral/msdk/video/module/MintegralVideoView;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/module/MintegralVideoView;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/f;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    .line 15
    return-void
.end method


# virtual methods
.method public final closeVideoOperate(II)V
    .registers 4

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/f;->closeVideoOperate(II)V

    .line 52
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->closeVideoOperate(II)V

    .line 55
    :cond_c
    return-void
.end method

.method public final getBorderViewHeight()I
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 121
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewHeight()I

    move-result v0

    .line 123
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/f;->getBorderViewHeight()I

    move-result v0

    goto :goto_a
.end method

.method public final getBorderViewLeft()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 148
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewLeft()I

    move-result v0

    .line 150
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/f;->getBorderViewLeft()I

    move-result v0

    goto :goto_a
.end method

.method public final getBorderViewRadius()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewRadius()I

    move-result v0

    .line 132
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/f;->getBorderViewRadius()I

    move-result v0

    goto :goto_a
.end method

.method public final getBorderViewTop()I
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 139
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewTop()I

    move-result v0

    .line 141
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/f;->getBorderViewTop()I

    move-result v0

    goto :goto_a
.end method

.method public final getBorderViewWidth()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 112
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getBorderViewWidth()I

    move-result v0

    .line 114
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/f;->getBorderViewWidth()I

    move-result v0

    goto :goto_a
.end method

.method public final getCurrentProgress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 68
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/f;->getCurrentProgress()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public final isH5Canvas()Z
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->isH5Canvas()Z

    move-result v0

    .line 105
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/f;->isH5Canvas()Z

    move-result v0

    goto :goto_a
.end method

.method public final progressOperate(II)V
    .registers 4

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/f;->progressOperate(II)V

    .line 60
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_c

    .line 61
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->progressOperate(II)V

    .line 63
    :cond_c
    return-void
.end method

.method public final setCover(Z)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_a

    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setCover(Z)V

    .line 90
    :goto_9
    return-void

    .line 88
    :cond_a
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/f;->setCover(Z)V

    goto :goto_9
.end method

.method public final setScaleFitXY(I)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_a

    .line 94
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setScaleFitXY(I)V

    .line 98
    :goto_9
    return-void

    .line 96
    :cond_a
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/f;->setScaleFitXY(I)V

    goto :goto_9
.end method

.method public final setVisible(I)V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_a

    .line 77
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->setVisible(I)V

    .line 81
    :goto_9
    return-void

    .line 79
    :cond_a
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/f;->setVisible(I)V

    goto :goto_9
.end method

.method public final showVideoLocation(IIIIIIIII)V
    .registers 20

    .prologue
    .line 19
    invoke-super/range {p0 .. p9}, Lcom/mintegral/msdk/video/js/a/f;->showVideoLocation(IIIIIIIII)V

    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_19

    .line 21
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->showVideoLocation(IIIIIIIII)V

    .line 23
    :cond_19
    return-void
.end method

.method public final soundOperate(II)V
    .registers 4

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/mintegral/msdk/video/js/a/f;->soundOperate(II)V

    .line 28
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1, p2}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(II)V

    .line 31
    :cond_c
    return-void
.end method

.method public final soundOperate(IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/mintegral/msdk/video/js/a/f;->soundOperate(IILjava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_c

    .line 37
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->soundOperate(IILjava/lang/String;)V

    .line 39
    :cond_c
    return-void
.end method

.method public final videoOperate(I)V
    .registers 3

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/f;->videoOperate(I)V

    .line 44
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    if-eqz v0, :cond_c

    .line 45
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/l;->a:Lcom/mintegral/msdk/video/module/MintegralVideoView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralVideoView;->videoOperate(I)V

    .line 47
    :cond_c
    return-void
.end method
