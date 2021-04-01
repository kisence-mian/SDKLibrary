.class Lcom/bytedance/sdk/openadsdk/core/x$3;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/e/b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/e/b;)V
    .registers 3

    .prologue
    .line 809
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$3;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/x$3;->a:Lcom/bytedance/sdk/openadsdk/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 812
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$3;->a:Lcom/bytedance/sdk/openadsdk/e/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/e/b;->a(ZLjava/util/List;)V

    .line 813
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 5

    .prologue
    .line 817
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 818
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$3;->a:Lcom/bytedance/sdk/openadsdk/e/b;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/e/b;->a(ZLjava/util/List;)V

    .line 822
    :goto_1a
    return-void

    .line 820
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$3;->a:Lcom/bytedance/sdk/openadsdk/e/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/e/b;->a(ZLjava/util/List;)V

    goto :goto_1a
.end method
