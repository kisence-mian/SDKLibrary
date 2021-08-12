.class final Lcom/bytedance/embedapplog/w;
.super Lcom/bytedance/embedapplog/u;
.source "SourceFile"


# instance fields
.field private final e:Lcom/bytedance/embedapplog/z;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/z;)V
    .registers 4

    .line 19
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/embedapplog/u;-><init>(ZZ)V

    .line 20
    iput-object p2, p0, Lcom/bytedance/embedapplog/w;->e:Lcom/bytedance/embedapplog/z;

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 4

    .line 24
    iget-object v0, p0, Lcom/bytedance/embedapplog/w;->e:Lcom/bytedance/embedapplog/z;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/z;->e()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/bytedance/embedapplog/bw;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 27
    const-string v1, "cdid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const/4 p1, 0x1

    return p1

    .line 30
    :cond_17
    const/4 p1, 0x0

    return p1
.end method
