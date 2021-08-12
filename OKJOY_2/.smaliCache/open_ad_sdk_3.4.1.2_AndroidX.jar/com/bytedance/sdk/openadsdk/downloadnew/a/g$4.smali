.class final Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;
.super Ljava/lang/Object;
.source "LibHolder.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->b(Lcom/bytedance/sdk/openadsdk/utils/a;Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/utils/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/a;)V
    .registers 4

    .line 390
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->c:Lcom/bytedance/sdk/openadsdk/utils/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->c:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_e

    .line 396
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V

    .line 398
    :cond_e
    return-void
.end method

.method public b()V
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->c:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_7

    .line 403
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V

    .line 405
    :cond_7
    return-void
.end method

.method public c()V
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/g$4;->c:Lcom/bytedance/sdk/openadsdk/utils/a;

    if-eqz v0, :cond_7

    .line 410
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->b()V

    .line 412
    :cond_7
    return-void
.end method
