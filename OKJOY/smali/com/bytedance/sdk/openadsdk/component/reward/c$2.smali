.class Lcom/bytedance/sdk/openadsdk/component/reward/c$2;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/c;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/reward/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/c;ZLcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .prologue
    .line 160
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v0, :cond_d

    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    .line 166
    :cond_d
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v2, -0x3

    const/4 v4, -0x4

    .line 170
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_120

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_120

    .line 171
    const-string v0, "FullScreenVideoLoadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get material data success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/k;

    .line 175
    :try_start_38
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    if-eqz v1, :cond_92

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 176
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->C()Lcom/bytedance/sdk/openadsdk/core/d/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;-><init>(Z)V

    .line 178
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;->a(Ljava/lang/String;)V

    .line 179
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;->a(I)V

    .line 180
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;->c(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ah;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/g/b;->b(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/g/e;->g()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_92} :catch_132

    .line 189
    :cond_92
    :goto_92
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/i;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 190
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v2, :cond_ac

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v2, :cond_ac

    .line 191
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V

    .line 195
    :cond_ac
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/d/k;)V

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V

    .line 205
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->aa()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 207
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-eqz v2, :cond_f5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v2

    if-nez v2, :cond_f5

    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/l;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v2

    .line 210
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    if-ne v2, v5, :cond_f5

    .line 211
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 212
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)V

    .line 252
    :cond_f4
    :goto_f4
    return-void

    .line 219
    :cond_f5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->r()Z

    move-result v2

    if-nez v2, :cond_f4

    .line 220
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/reward/i;)V

    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/reward/a$a;)V

    goto :goto_f4

    .line 243
    :cond_10e
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v0, :cond_f4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v0, :cond_f4

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    goto :goto_f4

    .line 248
    :cond_120
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v0, :cond_f4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v0, :cond_f4

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    goto :goto_f4

    .line 186
    :catch_132
    move-exception v1

    goto/16 :goto_92
.end method
