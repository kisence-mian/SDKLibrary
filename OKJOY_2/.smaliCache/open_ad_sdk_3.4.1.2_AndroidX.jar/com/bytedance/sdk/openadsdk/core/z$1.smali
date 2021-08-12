.class final Lcom/bytedance/sdk/openadsdk/core/z$1;
.super Ljava/lang/Object;
.source "WebHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;ZLjava/util/Map;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Landroid/content/Context;IZLjava/util/Map;)V
    .registers 7

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->c:Landroid/content/Context;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->d:I

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->e:Z

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->f:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->b:Ljava/lang/String;

    const-string v3, "deeplink_success_realtime"

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 10

    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->aw()Z

    move-result v0

    if-nez v0, :cond_26

    .line 98
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/l;->W()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->d:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->b:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->e:Z

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->f:Ljava/util/Map;

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/l;ILjava/lang/String;ZLjava/util/Map;)Z

    .line 99
    const-string v0, "WebHelper"

    const-string v1, "openDetailPage() -> context.startActivity(intent) fail :"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    :cond_26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->b:Ljava/lang/String;

    const-string v2, "deeplink_fail_realtime"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
