.class public Lcom/bytedance/sdk/openadsdk/e/b/a;
.super Lcom/bytedance/sdk/openadsdk/e/a/d;
.source "ClickMiddleActivityBackMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/e/a/d<",
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
            "Lcom/bytedance/sdk/openadsdk/core/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/e/a/d;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/b/a;->a:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/e/a/q;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/b/a$1;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/e/b/a$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/x;)V

    const-string p1, "immersiveVideoPageBack"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/q;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/d$b;)Lcom/bytedance/sdk/openadsdk/e/a/q;

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/b/a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/e/a/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/b/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_1d

    .line 35
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/b/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/x;

    .line 36
    if-nez p1, :cond_19

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/e/b/a;->c()V

    .line 38
    return-void

    .line 40
    :cond_19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/x;->b()V

    .line 41
    return-void

    .line 33
    :cond_1d
    :goto_1d
    return-void
.end method
