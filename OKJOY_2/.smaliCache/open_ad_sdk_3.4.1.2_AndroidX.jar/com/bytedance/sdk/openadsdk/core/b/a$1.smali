.class Lcom/bytedance/sdk/openadsdk/core/b/a$1;
.super Ljava/lang/Object;
.source "FrequentCallController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/a;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/b/a;Z)V

    .line 99
    return-void
.end method
