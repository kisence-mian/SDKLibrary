.class final Lcom/bytedance/sdk/openadsdk/core/z$2;
.super Ljava/lang/Object;
.source "WebHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/utils/a;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/a;)V
    .registers 8

    .line 241
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->a:J

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->d:Landroid/content/Intent;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->f:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u95f4\u9694\u65f6\u95f4 onActivityResumed intervalTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->a:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebHelper"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_34

    .line 249
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->d:Landroid/content/Intent;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;Ljava/lang/String;)V

    .line 251
    :cond_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$2;->f:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_3b

    .line 252
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V

    .line 254
    :cond_3b
    return-void
.end method

.method public b()V
    .registers 1

    .line 260
    return-void
.end method

.method public c()V
    .registers 1

    .line 265
    return-void
.end method

.method public d()V
    .registers 1

    .line 270
    return-void
.end method

.method public e()V
    .registers 1

    .line 274
    return-void
.end method

.method public f()V
    .registers 1

    .line 278
    return-void
.end method
