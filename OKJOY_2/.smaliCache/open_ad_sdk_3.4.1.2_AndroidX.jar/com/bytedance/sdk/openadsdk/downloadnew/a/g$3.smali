.class final Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;
.super Ljava/lang/Object;
.source "LibHolder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/utils/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 326
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 330
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ak;->a()Z

    move-result v0

    .line 331
    if-nez v0, :cond_15

    .line 332
    const-string v0, "LibHolder"

    const-string v1, "\u9501\u5c4f\u4e0d\u6267\u884c\u81ea\u542f\u52a8\u8c03\u8d77"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_14

    .line 334
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V

    .line 336
    :cond_14
    return-void

    .line 338
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->c:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Lcom/bytedance/sdk/openadsdk/utils/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$3;->a:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_31

    .line 342
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    .line 347
    :cond_31
    goto :goto_33

    .line 345
    :catchall_32
    move-exception v0

    .line 348
    :goto_33
    return-void
.end method

.method public b()V
    .registers 1

    .line 353
    return-void
.end method

.method public c()V
    .registers 1

    .line 358
    return-void
.end method

.method public d()V
    .registers 1

    .line 363
    return-void
.end method

.method public e()V
    .registers 1

    .line 368
    return-void
.end method

.method public f()V
    .registers 1

    .line 372
    return-void
.end method
