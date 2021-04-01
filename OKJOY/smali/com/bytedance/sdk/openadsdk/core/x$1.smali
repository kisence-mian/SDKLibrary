.class Lcom/bytedance/sdk/openadsdk/core/x$1;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/x;->b(Lcom/bytedance/sdk/openadsdk/core/x$a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/x$a;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/x;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/x;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/x$a;)V
    .registers 4

    .prologue
    .line 720
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->b:Lcom/bytedance/sdk/openadsdk/core/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/core/d/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 723
    if-eqz p1, :cond_1b

    .line 725
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 726
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->a:Lorg/json/JSONObject;

    const-string v2, "creatives"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->b:Lcom/bytedance/sdk/openadsdk/core/x$a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_27

    .line 733
    :goto_1a
    return-void

    .line 731
    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->c:Lcom/bytedance/sdk/openadsdk/core/x;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->b:Lcom/bytedance/sdk/openadsdk/core/x$a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/x$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/x$1;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/x;->a(Lcom/bytedance/sdk/openadsdk/core/x;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1a

    .line 728
    :catch_27
    move-exception v0

    goto :goto_1a
.end method
