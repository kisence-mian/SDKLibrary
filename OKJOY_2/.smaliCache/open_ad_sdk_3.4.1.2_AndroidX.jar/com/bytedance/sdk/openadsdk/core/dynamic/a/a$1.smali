.class Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;
.super Ljava/lang/Object;
.source "DynamicClient.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/dynamic/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V
    .registers 4

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/a/a$1;Lcom/bytedance/sdk/openadsdk/core/dynamic/b/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
