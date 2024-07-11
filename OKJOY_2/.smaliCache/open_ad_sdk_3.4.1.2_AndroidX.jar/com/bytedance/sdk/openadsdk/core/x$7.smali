.class Lcom/bytedance/sdk/openadsdk/core/x$7;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/f/c;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/f/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Lcom/bytedance/sdk/openadsdk/f/c;)V
    .registers 3

    .line 1189
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$7;->b:Lcom/bytedance/sdk/openadsdk/core/x;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/x$7;->a:Lcom/bytedance/sdk/openadsdk/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .line 1192
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$7;->a:Lcom/bytedance/sdk/openadsdk/f/c;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/f/c;->a(ZLjava/util/List;)V

    .line 1193
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .registers 4

    .line 1197
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1198
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$7;->a:Lcom/bytedance/sdk/openadsdk/f/c;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/f/c;->a(ZLjava/util/List;)V

    goto :goto_22

    .line 1200
    :cond_1b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$7;->a:Lcom/bytedance/sdk/openadsdk/f/c;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/f/c;->a(ZLjava/util/List;)V

    .line 1202
    :goto_22
    return-void
.end method
