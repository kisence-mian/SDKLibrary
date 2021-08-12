.class abstract Lcom/bytedance/sdk/openadsdk/e/a/c;
.super Lcom/bytedance/sdk/openadsdk/e/a/b;
.source "BaseRawMethod.java"


# instance fields
.field a:Lcom/bytedance/sdk/openadsdk/e/a/w;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/b;-><init>()V

    .line 9
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/e/a/b;->b()Lcom/bytedance/sdk/openadsdk/e/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    return-void
.end method


# virtual methods
.method abstract a(Lcom/bytedance/sdk/openadsdk/e/a/p;Lcom/bytedance/sdk/openadsdk/e/a/s;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
