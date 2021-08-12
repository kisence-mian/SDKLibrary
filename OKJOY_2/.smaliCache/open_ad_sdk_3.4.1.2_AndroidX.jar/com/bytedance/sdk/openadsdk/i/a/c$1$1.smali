.class Lcom/bytedance/sdk/openadsdk/i/a/c$1$1;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/i/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/a/c$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/i/a/c$1;I)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$1$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/c$1;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$1$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/c$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/i/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/i/a/c$1$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/c$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/i/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/i/a/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/i/a/c;->a(Lcom/bytedance/sdk/openadsdk/i/a/c;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/i/a/c;->a(Lcom/bytedance/sdk/openadsdk/i/a/c;J)V

    .line 57
    return-void
.end method
