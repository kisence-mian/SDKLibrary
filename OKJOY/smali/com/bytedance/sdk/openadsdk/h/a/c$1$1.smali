.class Lcom/bytedance/sdk/openadsdk/h/a/c$1$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/a/c$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/c$1;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$1$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$1$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/c$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$1$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/c$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/h/a/c$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;J)V

    .line 54
    return-void
.end method
