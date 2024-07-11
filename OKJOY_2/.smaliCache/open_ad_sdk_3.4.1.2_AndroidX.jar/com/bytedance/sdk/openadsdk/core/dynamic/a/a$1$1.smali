.class Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1$1;
.super Ljava/lang/Object;
.source "DynamicClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 3

    .line 121
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1$1;->b:Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1$1;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    .line 125
    return-void
.end method
