.class Lcom/bytedance/embedapplog/ae;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V
    .registers 5

    .line 21
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 22
    iput-object p1, p0, Lcom/bytedance/embedapplog/ae;->e:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/bytedance/embedapplog/ae;->f:Lcom/bytedance/embedapplog/z;

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4

    .line 28
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getInitConfig()Lcom/bytedance/embedapplog/InitConfig;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getInitConfig()Lcom/bytedance/embedapplog/InitConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/InitConfig;->getSensitiveInfoProvider()Lcom/bytedance/embedapplog/ISensitiveInfoProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/embedapplog/ISensitiveInfoProvider;->getMac()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, ""

    .line 29
    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 30
    const-string v1, "mc"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_20
    const/4 p1, 0x1

    return p1
.end method
