.class Lcom/bytedance/sdk/openadsdk/component/reward/g$2;
.super Ljava/lang/Object;
.source "RewardVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/g;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/component/reward/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;ZLcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .registers 5

    .line 188
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .line 191
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz v0, :cond_b

    .line 192
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 194
    :cond_b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 6

    .line 198
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12b

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get material data success isPreload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardVideoLoadManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 203
    const/4 v0, 0x1

    :try_start_36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    if-eqz v1, :cond_8e

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 204
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/b;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/b;-><init>(Z)V

    .line 206
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Ljava/lang/String;)V

    .line 207
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->a(I)V

    .line 208
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->c(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->d(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->b(Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/h/d;->g()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V
    :try_end_8e
    .catchall {:try_start_36 .. :try_end_8e} :catchall_8f

    .line 215
    :cond_8e
    goto :goto_90

    .line 214
    :catchall_8f
    move-exception v1

    .line 217
    :goto_90
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/j;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 218
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    if-nez v2, :cond_a8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz v2, :cond_a8

    .line 219
    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onRewardVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTRewardVideoAd;)V

    .line 223
    :cond_a8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g$2;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V

    .line 233
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 234
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    if-eqz v2, :cond_f1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v2

    if-nez v2, :cond_f1

    .line 236
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v2

    .line 237
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    if-ne v2, v0, :cond_f1

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f0

    .line 239
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/g$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;Lcom/bytedance/sdk/openadsdk/component/reward/g$a;)V

    .line 241
    :cond_f0
    return-void

    .line 246
    :cond_f1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-nez v0, :cond_10a

    .line 247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/g$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/g$2;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/reward/j;)V

    invoke-virtual {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;)V

    goto :goto_12a

    .line 269
    :cond_10a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/g;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a(Lcom/bytedance/sdk/openadsdk/component/reward/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    goto :goto_12a

    .line 272
    :cond_11a
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    if-nez p1, :cond_12a

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_12a

    .line 273
    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 276
    :cond_12a
    :goto_12a
    goto :goto_13b

    .line 277
    :cond_12b
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->a:Z

    if-nez p1, :cond_13b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;

    if-eqz p1, :cond_13b

    .line 278
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener;->onError(ILjava/lang/String;)V

    .line 281
    :cond_13b
    :goto_13b
    return-void
.end method
