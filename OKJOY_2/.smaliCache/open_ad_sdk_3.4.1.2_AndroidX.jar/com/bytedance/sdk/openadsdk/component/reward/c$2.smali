.class Lcom/bytedance/sdk/openadsdk/component/reward/c$2;
.super Ljava/lang/Object;
.source "FullScreenVideoLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


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

    .line 172
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

    .line 175
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v0, :cond_b

    .line 176
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    .line 178
    :cond_b
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 6

    .line 182
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12c

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12c

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get material data success isPreload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreenVideoLoadManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/l;

    .line 187
    const/4 v0, 0x1

    :try_start_36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    if-eqz v1, :cond_8f

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 188
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->U()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->a()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/b;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/b;-><init>(Z)V

    .line 190
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->a(Ljava/lang/String;)V

    .line 191
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->a(I)V

    .line 192
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->ag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->c(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->d(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/aj;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b;->b(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/h/d;->g()Lcom/bytedance/sdk/adnet/b/d;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/bytedance/sdk/adnet/b/d;->a(Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$d;)V
    :try_end_8f
    .catchall {:try_start_36 .. :try_end_8f} :catchall_90

    .line 199
    :cond_8f
    goto :goto_91

    .line 198
    :catchall_90
    move-exception v1

    .line 201
    :goto_91
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/i;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/i;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 202
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez v2, :cond_a9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz v2, :cond_a9

    .line 203
    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onFullScreenVideoAdLoad(Lcom/bytedance/sdk/openadsdk/TTFullScreenVideoAd;)V

    .line 207
    :cond_a9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a()Lcom/bytedance/sdk/openadsdk/core/g/a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    invoke-virtual {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/core/g/a$a;)V

    .line 217
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aB()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 219
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-eqz v2, :cond_f2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v2

    if-nez v2, :cond_f2

    .line 221
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()Lcom/bytedance/sdk/openadsdk/core/h/h;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/h/h;->r(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;

    move-result-object v2

    .line 222
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    if-ne v2, v0, :cond_f2

    .line 223
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f1

    .line 224
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v1, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/c$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;Lcom/bytedance/sdk/openadsdk/component/reward/c$a;)V

    .line 226
    :cond_f1
    return-void

    .line 231
    :cond_f2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/l;->D()Z

    move-result v0

    if-nez v0, :cond_10b

    .line 232
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/c$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/c$2;Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/reward/i;)V

    invoke-virtual {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Lcom/bytedance/sdk/openadsdk/component/reward/a$a;)V

    goto :goto_12b

    .line 254
    :cond_10b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->d:Lcom/bytedance/sdk/openadsdk/component/reward/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/c;->a(Lcom/bytedance/sdk/openadsdk/component/reward/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->c:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/a;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/d/l;)V

    goto :goto_12b

    .line 257
    :cond_11b
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez p1, :cond_12b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz p1, :cond_12b

    .line 258
    const/4 v0, -0x4

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    .line 261
    :cond_12b
    :goto_12b
    goto :goto_13c

    .line 262
    :cond_12c
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->a:Z

    if-nez p1, :cond_13c

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/c$2;->b:Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;

    if-eqz p1, :cond_13c

    .line 263
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener;->onError(ILjava/lang/String;)V

    .line 266
    :cond_13c
    :goto_13c
    return-void
.end method
