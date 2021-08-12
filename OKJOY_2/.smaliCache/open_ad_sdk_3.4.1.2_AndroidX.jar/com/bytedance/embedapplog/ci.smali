.class final Lcom/bytedance/embedapplog/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "device_register_oaid_refine"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/embedapplog/ci;->a:Landroid/content/SharedPreferences;

    .line 33
    return-void
.end method


# virtual methods
.method a()Lcom/bytedance/embedapplog/ch;
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/bytedance/embedapplog/ci;->a:Landroid/content/SharedPreferences;

    const-string v1, "oaid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/embedapplog/ch;->a(Ljava/lang/String;)Lcom/bytedance/embedapplog/ch;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/bytedance/embedapplog/ch;)V
    .registers 4

    .line 36
    if-nez p1, :cond_3

    .line 37
    return-void

    .line 39
    :cond_3
    iget-object v0, p0, Lcom/bytedance/embedapplog/ci;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/ch;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "oaid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method
