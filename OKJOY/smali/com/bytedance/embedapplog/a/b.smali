.class Lcom/bytedance/embedapplog/a/b;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# instance fields
.field private b:Z

.field private final c:Lcom/bytedance/embedapplog/b/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/b;->c:Lcom/bytedance/embedapplog/b/i;

    .line 26
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 3

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/b;->b:Z

    if-eqz v0, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    :goto_9
    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    goto :goto_9
.end method

.method c()[J
    .registers 2

    .prologue
    .line 40
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->b:[J

    return-object v0
.end method

.method d()Z
    .registers 7

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/b;->c:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 46
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/b;->c:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_32

    .line 48
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/b;->c:Lcom/bytedance/embedapplog/b/i;

    .line 49
    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/embedapplog/c/a;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/util/UriConfig;->getActiveUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getIAppParam()Lcom/bytedance/embedapplog/IAppParam;

    move-result-object v5

    .line 48
    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/embedapplog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/embedapplog/c/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/b;->b:Z

    .line 54
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/bytedance/embedapplog/a/b;->b:Z

    return v0

    .line 51
    :cond_32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    const-string v0, "ac"

    return-object v0
.end method
