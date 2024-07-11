.class Lcom/bytedance/embedapplog/ak;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Lcom/bytedance/embedapplog/z;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/z;)V
    .registers 4

    .line 20
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/bytedance/embedapplog/u;-><init>(ZZZ)V

    .line 21
    iput-object p1, p0, Lcom/bytedance/embedapplog/ak;->e:Lcom/bytedance/embedapplog/z;

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 12

    .line 26
    iget-object v0, p0, Lcom/bytedance/embedapplog/ak;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    const-string v1, "install_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v4, "device_id"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    const-string v6, "ssid"

    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {p1, v1, v3}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {p1, v4, v5}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1, v6, v2}, Lcom/bytedance/embedapplog/aa;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "register_time"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 35
    invoke-static {v3}, Lcom/bytedance/embedapplog/aa;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {v5}, Lcom/bytedance/embedapplog/aa;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 36
    :cond_36
    cmp-long v2, v8, v6

    if-eqz v2, :cond_47

    .line 37
    nop

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_48

    .line 41
    :cond_47
    move-wide v6, v8

    :goto_48
    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const/4 p1, 0x1

    return p1
.end method
