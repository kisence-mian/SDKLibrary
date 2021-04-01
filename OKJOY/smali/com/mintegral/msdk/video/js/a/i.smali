.class public final Lcom/mintegral/msdk/video/js/a/i;
.super Lcom/mintegral/msdk/video/js/a/c;
.source "JSContainerModule.java"


# instance fields
.field private a:Lcom/mintegral/msdk/video/module/MintegralContainerView;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/video/module/MintegralContainerView;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mintegral/msdk/video/js/a/c;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    .line 18
    return-void
.end method


# virtual methods
.method public final configurationChanged(III)V
    .registers 5

    .prologue
    .line 186
    invoke-super {p0, p1, p2, p3}, Lcom/mintegral/msdk/video/js/a/c;->configurationChanged(III)V

    .line 188
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    .line 189
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->configurationChanged(III)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 194
    :cond_c
    :goto_c
    return-void

    .line 192
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public final endCardShowing()Z
    .registers 2

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_f

    .line 116
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->endCardShowing()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 121
    :goto_a
    return v0

    .line 119
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    :cond_f
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/c;->endCardShowing()Z

    move-result v0

    goto :goto_a
.end method

.method public final miniCardShowing()Z
    .registers 2

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_f

    .line 128
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->miniCardShowing()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 133
    :goto_a
    return v0

    .line 131
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    :cond_f
    invoke-super {p0}, Lcom/mintegral/msdk/video/js/a/c;->miniCardShowing()Z

    move-result v0

    goto :goto_a
.end method

.method public final readyStatus(I)V
    .registers 3

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->readyStatus(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_d

    .line 157
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/c;->readyStatus(I)V

    .line 158
    return-void

    .line 155
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public final resizeMiniCard(III)V
    .registers 5

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/mintegral/msdk/video/js/a/c;->resizeMiniCard(III)V

    .line 176
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    .line 177
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->resizeMiniCard(III)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 182
    :cond_c
    :goto_c
    return-void

    .line 180
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public final showEndcard(I)V
    .registers 3

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/c;->showEndcard(I)V

    .line 56
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    .line 57
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showEndcard(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 62
    :cond_c
    :goto_c
    return-void

    .line 60
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method

.method public final showMiniCard(IIIII)V
    .registers 12

    .prologue
    .line 162
    invoke-super/range {p0 .. p5}, Lcom/mintegral/msdk/video/js/a/c;->showMiniCard(IIIII)V

    .line 164
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_11

    .line 165
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showMiniCard(IIIII)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_12

    .line 170
    :cond_11
    :goto_11
    return-void

    .line 168
    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method

.method public final showVideoClickView(I)V
    .registers 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/c;->showVideoClickView(I)V

    .line 23
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    .line 24
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->showVideoClickView(I)V

    .line 26
    :cond_c
    return-void
.end method

.method public final toggleCloseBtn(I)V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/mintegral/msdk/video/js/a/c;->toggleCloseBtn(I)V

    .line 68
    :try_start_3
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/mintegral/msdk/video/js/a/i;->a:Lcom/mintegral/msdk/video/module/MintegralContainerView;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/video/module/MintegralContainerView;->toggleCloseBtn(I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_d

    .line 74
    :cond_c
    :goto_c
    return-void

    .line 72
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c
.end method
