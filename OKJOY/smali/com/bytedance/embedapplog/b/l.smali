.class Lcom/bytedance/embedapplog/b/l;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/bytedance/embedapplog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/h;)V
    .registers 5

    .prologue
    .line 29
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZ)V

    .line 30
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/l;->e:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/bytedance/embedapplog/b/l;->f:Lcom/bytedance/embedapplog/b/h;

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 36
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/l;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->R()Z

    move-result v0

    if-nez v0, :cond_c

    .line 91
    :cond_b
    :goto_b
    return v9

    .line 41
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_b8

    .line 43
    :try_start_12
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .line 44
    :cond_16
    if-eqz v3, :cond_cc

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 45
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 47
    const-string v4, "wlan0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 48
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    .line 49
    if-eqz v4, :cond_16

    array-length v0, v4

    if-lez v0, :cond_16

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    array-length v5, v4

    move v0, v2

    :goto_40
    if-ge v0, v5, :cond_5a

    aget-byte v2, v4, v0

    .line 52
    const-string v6, "%02X:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 54
    :cond_5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_69

    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 57
    :cond_69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6c
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_6c} :catch_b4

    move-result-object v0

    :goto_6d
    move-object v2, v0

    .line 67
    :goto_6e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 69
    :try_start_74
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/l;->e:Landroid/content/Context;

    const-string v3, "wifi"

    .line 70
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 71
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_88

    .line 73
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/SecurityException; {:try_start_74 .. :try_end_87} :catch_ba

    move-result-object v2

    .line 80
    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/l;->f:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    const-string v3, "mac_addr"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    .line 83
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mac_addr"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    :cond_ad
    const-string v0, "mc"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_b

    .line 62
    :catch_b4
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_b8
    move-object v2, v1

    goto :goto_6e

    .line 75
    :catch_ba
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_88

    .line 87
    :cond_bf
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 89
    const-string v0, "mc"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_b

    :cond_cc
    move-object v0, v1

    goto :goto_6d
.end method
