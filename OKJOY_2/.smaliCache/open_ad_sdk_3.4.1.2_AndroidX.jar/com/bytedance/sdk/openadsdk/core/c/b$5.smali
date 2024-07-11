.class Lcom/bytedance/sdk/openadsdk/core/c/b$5;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/c/b;->a()V
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

    .line 395
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .registers 3

    .line 398
    const/4 p1, 0x2

    if-eq p2, p1, :cond_9

    const/4 p1, 0x3

    if-eq p2, p1, :cond_9

    const/4 p1, 0x5

    if-ne p2, p1, :cond_e

    .line 401
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/c/b$5;->a:Lcom/bytedance/sdk/openadsdk/core/c/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->c(Lcom/bytedance/sdk/openadsdk/core/c/b;)V

    .line 403
    :cond_e
    return-void
.end method
