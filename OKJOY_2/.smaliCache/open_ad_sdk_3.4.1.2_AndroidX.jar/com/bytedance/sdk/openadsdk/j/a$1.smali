.class Lcom/bytedance/sdk/openadsdk/j/a$1;
.super Lcom/bytedance/sdk/openadsdk/j/g;
.source "ADThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/j/a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/j/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/j/a;Ljava/lang/Runnable;)V
    .registers 3

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a$1;->b:Lcom/bytedance/sdk/openadsdk/j/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/g;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    return-void
.end method
