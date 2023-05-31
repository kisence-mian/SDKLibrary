.class Lcom/bytedance/applog/b/f;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, v0}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 21
    iput-object p1, p0, Lcom/bytedance/applog/b/f;->e:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 5

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bytedance/applog/b/f;->e:Landroid/content/Context;

    const-string v1, "snssdk_openudid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 27
    const-string v0, "clientudid"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/bytedance/applog/b/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 30
    :try_start_16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v2, "clientudid.dat"

    invoke-virtual {p0, v2, v0}, Lcom/bytedance/applog/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_37

    move-result-object v0

    .line 35
    :goto_24
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 36
    const-string v2, "clientudid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    :cond_30
    const-string v1, "clientudid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const/4 v0, 0x1

    return v0

    .line 32
    :catch_37
    move-exception v2

    goto :goto_24
.end method
