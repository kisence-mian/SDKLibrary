.class public final Lcom/tds/common/net/ResponseBean;
.super Ljava/lang/Object;
.source "ResponseBean.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final success:Z


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    .local p0, "this":Lcom/tds/common/net/ResponseBean;, "Lcom/tds/common/net/ResponseBean<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tds/common/net/ResponseBean;->success:Z

    .line 17
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tds/common/net/json/JsonUtil;->parse(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    goto :goto_21

    .line 20
    :cond_1e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    .line 22
    :goto_21
    return-void
.end method
