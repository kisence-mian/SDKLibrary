.class Lcom/bytedance/sdk/openadsdk/h/f$3;
.super Lcom/bytedance/sdk/openadsdk/i/c;
.source "ProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/f;->g()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/h/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/f;Lcom/bytedance/sdk/openadsdk/i/b;)V
    .registers 3

    .prologue
    .line 386
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->b:Lcom/bytedance/sdk/openadsdk/h/f;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 389
    const-string v0, "TTExecutor"

    const-string v1, "pingTest.....run"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->run()V

    .line 391
    return-void
.end method
