.class final Lcom/bytedance/applog/b/e;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Lcom/bytedance/applog/b/h;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/h;)V
    .registers 5

    .prologue
    .line 19
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 20
    iput-object p2, p0, Lcom/bytedance/applog/b/e;->e:Lcom/bytedance/applog/b/h;

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/bytedance/applog/b/e;->e:Lcom/bytedance/applog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/h;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/bytedance/a/b;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 27
    const-string v1, "cdid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
