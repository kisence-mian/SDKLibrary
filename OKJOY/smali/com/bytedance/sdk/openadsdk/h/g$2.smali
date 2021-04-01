.class Lcom/bytedance/sdk/openadsdk/h/g$2;
.super Lcom/bytedance/sdk/openadsdk/i/c;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/i/b;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/h/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/g;Lcom/bytedance/sdk/openadsdk/i/b;)V
    .registers 3

    .prologue
    .line 343
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$2;->b:Lcom/bytedance/sdk/openadsdk/h/g;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/g$2;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$2;->a:Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/b;->run()V

    .line 347
    return-void
.end method
