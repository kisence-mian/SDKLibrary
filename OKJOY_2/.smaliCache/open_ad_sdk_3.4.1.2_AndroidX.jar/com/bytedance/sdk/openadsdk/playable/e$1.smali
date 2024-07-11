.class Lcom/bytedance/sdk/openadsdk/playable/e$1;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/playable/e;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/playable/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/playable/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/playable/e;Landroid/webkit/WebView;)V
    .registers 3

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Lcom/bytedance/sdk/openadsdk/playable/e;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Lcom/bytedance/sdk/openadsdk/playable/e;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 59
    return-void

    .line 61
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Lcom/bytedance/sdk/openadsdk/playable/e;I)I

    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Lcom/bytedance/sdk/openadsdk/playable/e;I)I

    .line 63
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    const-string v1, "width"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Lcom/bytedance/sdk/openadsdk/playable/e;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string v1, "height"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/playable/e;->b(Lcom/bytedance/sdk/openadsdk/playable/e;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    const-string v2, "resize"

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 67
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/playable/e$1;->b:Lcom/bytedance/sdk/openadsdk/playable/e;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/playable/e;->a(Lcom/bytedance/sdk/openadsdk/playable/e;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_5b

    .line 70
    goto :goto_63

    .line 68
    :catchall_5b
    move-exception v0

    .line 69
    const-string v1, "PlayablePlugin"

    const-string v2, "onSizeChanged error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/playable/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :goto_63
    return-void
.end method
