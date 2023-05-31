.class Lcom/bytedance/applog/b/u;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 21
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 22
    iput-object p1, p0, Lcom/bytedance/applog/b/u;->e:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 5

    .prologue
    .line 27
    iget-object v0, p0, Lcom/bytedance/applog/b/u;->e:Landroid/content/Context;

    const-string v1, "phone"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 29
    if-eqz v0, :cond_29

    .line 30
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 31
    const-string v2, "carrier"

    invoke-static {p1, v2, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "mcc_mnc"

    invoke-static {p1, v2, v1}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/bytedance/applog/util/f;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "udid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/applog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    .line 38
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
