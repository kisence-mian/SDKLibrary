.class public Lcom/bytedance/sdk/openadsdk/e/b/g;
.super Lcom/bytedance/sdk/openadsdk/e/a/e;
.source "PreventTouchEventMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/e/a/e<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/e;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/b/g;->a:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V
    .registers 3

    .line 29
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/g;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/g;-><init>(Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;)V

    const-string p1, "preventTouchEvent"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/e;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/b/g;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const-string p2, "success"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    const/4 v1, 0x0

    :try_start_8
    const-string v2, "isPrevent"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/e/b/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;

    .line 51
    if-eqz v2, :cond_20

    .line 52
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/webview/SSWebView;->setIsPreventTouchEvent(Z)V

    .line 53
    const/4 p1, 0x1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_23

    .line 55
    :cond_20
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_24

    .line 60
    :goto_23
    goto :goto_2f

    .line 57
    :catchall_24
    move-exception p1

    .line 58
    const-string v2, "PreventTouchEventMethod"

    const-string v3, "invoke error"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 61
    :goto_2f
    return-object v0
.end method
