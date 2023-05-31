.class Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;
.super Ljava/lang/Object;
.source "TTFullScreenExpressVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->a(JZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;)V
    .registers 2

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 166
    const-string v0, "TTFullScreenExpressVideoActivity"

    const-string v1, "onTimeOut\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->q()V

    .line 174
    :goto_14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    const-string v1, "vbtt_skip_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    const-string v2, "fullscreen_interstitial_ad"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_37

    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->l()V

    .line 182
    :cond_37
    return-void

    .line 171
    :cond_38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->finish()V

    goto :goto_14
.end method

.method public a(JI)V
    .registers 6

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->aM:Z

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->Q()V

    .line 135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->q()V

    .line 141
    :goto_17
    return-void

    .line 139
    :cond_18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->finish()V

    goto :goto_17
.end method

.method public a(JJ)V
    .registers 14

    .prologue
    const-wide/16 v6, 0x3e8

    .line 191
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iput-wide p1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->aH:J

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->G()D

    move-result-wide v2

    div-long v4, p1, v6

    long-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->N:I

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->aF:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->m()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 194
    div-long v0, p1, v6

    long-to-int v0, v0

    .line 196
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->e(I)V

    .line 198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->N:I

    if-ltz v0, :cond_4b

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_4b

    .line 200
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowCountDown(Z)V

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->b:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->N:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 205
    :cond_4b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->N:I

    if-gtz v0, :cond_65

    .line 206
    const-string v0, "TTFullScreenExpressVideoActivity"

    const-string v1, "onProgressUpdate\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->q()V

    .line 216
    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->X:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->V:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 217
    :cond_79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 218
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->h()V

    .line 221
    :cond_88
    return-void

    .line 211
    :cond_89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->finish()V

    goto :goto_65
.end method

.method public b(JI)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->r()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 162
    :goto_9
    return-void

    .line 148
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz v0, :cond_17

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->A:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->l()V

    .line 151
    :cond_17
    const-string v0, "TTFullScreenExpressVideoActivity"

    const-string v1, "onError\u3001\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->O()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->q()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    const-string v1, "vbtt_skip_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    const-string v2, "fullscreen_interstitial_ad"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    :goto_40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    iput-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->aL:Z

    goto :goto_9

    .line 159
    :cond_45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity$1;->a:Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTFullScreenExpressVideoActivity;->finish()V

    goto :goto_40
.end method
