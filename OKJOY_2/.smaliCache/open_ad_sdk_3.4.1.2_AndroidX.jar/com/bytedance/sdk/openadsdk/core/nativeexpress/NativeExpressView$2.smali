.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;
.super Ljava/lang/Object;
.source "NativeExpressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(ZFFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;ZFFII)V
    .registers 7

    .line 994
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->f:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->a:Z

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->b:F

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->c:F

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->d:I

    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 998
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->f:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->l:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez v0, :cond_7

    .line 999
    return-void

    .line 1001
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->f:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->a:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->b:F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->c:F

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->d:I

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;->e:I

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;ZFFII)V

    .line 1002
    return-void
.end method
