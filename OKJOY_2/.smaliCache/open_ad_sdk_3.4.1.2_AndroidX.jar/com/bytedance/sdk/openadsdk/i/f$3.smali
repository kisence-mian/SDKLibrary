.class Lcom/bytedance/sdk/openadsdk/i/f$3;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/f;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/j/f;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/i/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/f;Lcom/bytedance/sdk/openadsdk/j/f;)V
    .registers 3

    .line 389
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/f$3;->b:Lcom/bytedance/sdk/openadsdk/i/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/i/f$3;->a:Lcom/bytedance/sdk/openadsdk/j/f;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 392
    const-string v0, "TTExecutor"

    const-string v1, "pingTest.....run"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/f$3;->a:Lcom/bytedance/sdk/openadsdk/j/f;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/f;->run()V

    .line 394
    return-void
.end method
