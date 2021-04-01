.class Lcom/bytedance/sdk/openadsdk/f/b/c$1;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/f/b/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/f/b/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/f/b/c;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/f/b/c;->a(Lcom/bytedance/sdk/openadsdk/f/b/c;)Lcom/bytedance/sdk/openadsdk/f/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/b/b;->d()Ljava/util/List;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_15

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/f/b/c;->b(Lcom/bytedance/sdk/openadsdk/f/b/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$1;->a:Lcom/bytedance/sdk/openadsdk/f/b/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/f/b/c;->a(Lcom/bytedance/sdk/openadsdk/f/b/c;)Lcom/bytedance/sdk/openadsdk/f/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/b/b;->c()V

    .line 45
    return-void
.end method
