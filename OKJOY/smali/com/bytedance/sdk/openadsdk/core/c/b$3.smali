.class Lcom/bytedance/sdk/openadsdk/core/c/b$3;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/c/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/c/b;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 284
    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    if-eq p2, v0, :cond_9

    const/4 v0, 0x5

    if-ne p2, v0, :cond_e

    .line 287
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$3;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/c/b;->g(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    .line 289
    :cond_e
    return-void
.end method
