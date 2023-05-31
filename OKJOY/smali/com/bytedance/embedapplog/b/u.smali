.class Lcom/bytedance/embedapplog/b/u;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V
    .registers 5

    .prologue
    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZ)V

    .line 24
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/u;->e:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/bytedance/embedapplog/b/u;->f:Lcom/bytedance/embedapplog/b/h;

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/u;->e:Landroid/content/Context;

    const-string v2, "phone"

    .line 31
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 32
    if-eqz v0, :cond_3f

    .line 34
    :try_start_d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 35
    const-string v3, "carrier"

    invoke-static {p1, v3, v2}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "mcc_mnc"

    invoke-static {p1, v3, v2}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/bytedance/embedapplog/b/u;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->S()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/e;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_2b
    const-string v2, "udid"

    invoke-static {p1, v2, v0}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_31
    return v0

    .line 38
    :cond_32
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/u;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->Q()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_39

    move-result-object v0

    goto :goto_2b

    .line 40
    :catch_39
    move-exception v0

    .line 41
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 42
    goto :goto_31

    :cond_3f
    move v0, v1

    .line 46
    goto :goto_31
.end method
