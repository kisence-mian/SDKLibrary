.class final Lcom/bytedance/sdk/openadsdk/core/z$1;
.super Ljava/lang/Object;
.source "WebHelper.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;Z)V
    .registers 6

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->c:I

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->h()Lcom/bytedance/sdk/openadsdk/core/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/l;->d()Z

    move-result v0

    if-nez v0, :cond_24

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/k;->E()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->b:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->c:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/z$1;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/z;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;Z)Z

    .line 73
    const-string v0, "WebHelper"

    const-string v1, "openDetailPage() -> context.startActivity(intent) fail :"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :cond_24
    return-void
.end method
