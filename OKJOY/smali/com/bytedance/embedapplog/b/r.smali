.class Lcom/bytedance/embedapplog/b/r;
.super Lcom/bytedance/embedapplog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Lcom/bytedance/embedapplog/b/h;


# direct methods
.method constructor <init>(Lcom/bytedance/embedapplog/b/h;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/bytedance/embedapplog/b/c;-><init>(ZZZ)V

    .line 21
    iput-object p1, p0, Lcom/bytedance/embedapplog/b/r;->e:Lcom/bytedance/embedapplog/b/h;

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 26
    iget-object v0, p0, Lcom/bytedance/embedapplog/b/r;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 27
    const-string v0, "install_id"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    const-string v0, "device_id"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 29
    const-string v0, "ssid"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "install_id"

    invoke-static {p1, v1, v5}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "device_id"

    invoke-static {p1, v1, v6}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "ssid"

    invoke-static {p1, v1, v0}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "register_time"

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    invoke-static {v5}, Lcom/bytedance/embedapplog/b/i;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-static {v6}, Lcom/bytedance/embedapplog/b/i;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 36
    :cond_3c
    cmp-long v5, v0, v2

    if-eqz v5, :cond_4e

    .line 38
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "register_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-wide v0, v2

    .line 41
    :cond_4e
    const-string v2, "register_time"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const/4 v0, 0x1

    return v0
.end method
