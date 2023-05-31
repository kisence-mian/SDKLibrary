.class Lcom/bytedance/sdk/openadsdk/core/g/a$3;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

.field final synthetic b:Z

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V
    .registers 4

    .prologue
    .line 402
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$3;->c:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    if-eqz v0, :cond_b

    .line 406
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$3;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$3;->b:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/a$a;->a(Z)V

    .line 408
    :cond_b
    return-void
.end method
