.class final Lcom/bytedance/embedapplog/b/n;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V
    .registers 5

    .prologue
    .line 21
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZ)V

    .line 22
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/n;->e:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/bytedance/embedapplog/b/n;->f:Lcom/bytedance/embedapplog/b/h;

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/n;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/bytedance/embedapplog/b/n;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bytedance/embed_device_register/b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1a

    .line 30
    const-string v1, "oaid"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const/4 v0, 0x1

    .line 33
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
