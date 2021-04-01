.class final Lcom/bytedance/sdk/openadsdk/utils/n$1;
.super Ljava/lang/Object;
.source "ImageBytesHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/utils/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/utils/n$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/n$a;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Lcom/bytedance/sdk/openadsdk/utils/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 42
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V
    .registers 2

    .prologue
    .line 60
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 6

    .prologue
    .line 46
    if-eqz p2, :cond_28

    array-length v0, p2

    if-lez v0, :cond_28

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Lcom/bytedance/sdk/openadsdk/utils/n$a;

    if-eqz v0, :cond_28

    .line 47
    const-string v0, "ImageBytesHelper: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56fe\u7247\u6570\u636e\u8fd4\u56de\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Lcom/bytedance/sdk/openadsdk/utils/n$a;

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/utils/n$a;->a([B)V

    .line 55
    :cond_27
    :goto_27
    return-void

    .line 52
    :cond_28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Lcom/bytedance/sdk/openadsdk/utils/n$a;

    if-eqz v0, :cond_27

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Lcom/bytedance/sdk/openadsdk/utils/n$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/n$a;->a()V

    goto :goto_27
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/g/a/b$c;)V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Lcom/bytedance/sdk/openadsdk/utils/n$a;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/n$1;->a:Lcom/bytedance/sdk/openadsdk/utils/n$a;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/n$a;->a()V

    .line 67
    :cond_9
    return-void
.end method
