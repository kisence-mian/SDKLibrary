.class Lcom/bytedance/sdk/openadsdk/core/z$3$1;
.super Ljava/lang/Object;
.source "WebHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/z$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/z$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/z$3;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/z$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/z$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 307
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/c/k;->a()Lcom/bytedance/sdk/openadsdk/c/k;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/z$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/z$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/z$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/z$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/z$3;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/k;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Z)V

    .line 308
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/z$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/z$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/z$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/z$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/z$3;->c:Ljava/lang/String;

    const-string v3, "deeplink_success_realtime"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    .line 313
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/z$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/z$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$3$1;->a:Lcom/bytedance/sdk/openadsdk/core/z$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/z$3;->c:Ljava/lang/String;

    const-string v2, "deeplink_fail_realtime"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method
