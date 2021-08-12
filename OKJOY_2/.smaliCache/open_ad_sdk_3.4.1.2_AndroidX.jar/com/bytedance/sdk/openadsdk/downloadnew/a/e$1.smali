.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;
.super Ljava/lang/Object;
.source "DMLibWebManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b(Lcom/bytedance/sdk/openadsdk/core/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
    .registers 3

    .line 182
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)V

    .line 186
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pop_up_download"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 187
    return-void
.end method

.method public b()V
    .registers 1

    .line 192
    return-void
.end method

.method public c()V
    .registers 6

    .line 196
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->b(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;->c(Lcom/bytedance/sdk/openadsdk/downloadnew/a/e;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "pop_up_cancel"

    invoke-static {v0, v1, v2, v4, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 197
    return-void
.end method
