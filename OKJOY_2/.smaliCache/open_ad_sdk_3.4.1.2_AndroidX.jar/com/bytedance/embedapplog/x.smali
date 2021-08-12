.class Lcom/bytedance/embedapplog/x;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 22
    iput-object p1, p0, Lcom/bytedance/embedapplog/x;->e:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 6

    .line 27
    iget-object v0, p0, Lcom/bytedance/embedapplog/x;->e:Landroid/content/Context;

    const-string v1, "snssdk_openudid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    const-string v1, "clientudid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/bytedance/embedapplog/aa;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 31
    :try_start_16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    const-string v3, "clientudid.dat"

    invoke-virtual {p0, v3, v2}, Lcom/bytedance/embedapplog/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_24} :catch_25

    .line 35
    goto :goto_26

    .line 33
    :catch_25
    move-exception v3

    .line 36
    :goto_26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    :cond_30
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const/4 p1, 0x1

    return p1
.end method
