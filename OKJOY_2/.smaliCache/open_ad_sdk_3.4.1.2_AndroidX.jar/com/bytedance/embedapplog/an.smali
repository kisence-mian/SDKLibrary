.class Lcom/bytedance/embedapplog/an;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V
    .registers 5

    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 24
    iput-object p1, p0, Lcom/bytedance/embedapplog/an;->e:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/bytedance/embedapplog/an;->f:Lcom/bytedance/embedapplog/z;

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 6

    .line 30
    iget-object v0, p0, Lcom/bytedance/embedapplog/an;->e:Landroid/content/Context;

    .line 31
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 32
    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    .line 34
    :try_start_d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 35
    const-string v3, "carrier"

    invoke-static {p1, v3, v2}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "mcc_mnc"

    invoke-static {p1, v3, v2}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/bytedance/embedapplog/an;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/z;->O()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-static {v0}, Lcom/bytedance/embedapplog/bm;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_2c
    iget-object v0, p0, Lcom/bytedance/embedapplog/an;->f:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->N()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_32
    const-string v2, "udid"

    invoke-static {p1, v2, v0}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_3a

    .line 43
    nop

    .line 44
    const/4 p1, 0x1

    return p1

    .line 40
    :catch_3a
    move-exception p1

    .line 41
    invoke-static {p1}, Lcom/bytedance/embedapplog/bo;->a(Ljava/lang/Throwable;)V

    .line 42
    return v1

    .line 46
    :cond_3f
    return v1
.end method
