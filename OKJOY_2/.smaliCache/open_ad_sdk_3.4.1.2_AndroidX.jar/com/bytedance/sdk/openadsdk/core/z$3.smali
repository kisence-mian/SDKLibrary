.class final Lcom/bytedance/sdk/openadsdk/core/z$3;
.super Ljava/lang/Object;
.source "WebHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/z;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    .line 298
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .line 302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->b:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->c:Ljava/lang/String;

    const-string v3, "open_url_app"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$3;->d:Landroid/content/Intent;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/z$3$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/z$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/z$3;)V

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/openadsdk/utils/b$a;)Z

    .line 316
    return-void
.end method

.method public b()V
    .registers 1

    .line 321
    return-void
.end method

.method public c()V
    .registers 1

    .line 326
    return-void
.end method
