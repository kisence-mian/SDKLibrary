.class Lcom/bytedance/applog/a/b;
.super Lcom/bytedance/applog/a/c;
.source "SourceFile"


# instance fields
.field private b:Z

.field private final c:Lcom/bytedance/applog/b/i;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/applog/b/i;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/bytedance/applog/a/c;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/bytedance/applog/a/b;->c:Lcom/bytedance/applog/b/i;

    .line 25
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .registers 3

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/bytedance/applog/a/b;->b:Z

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
    .line 39
    sget-object v0, Lcom/bytedance/applog/a/j;->b:[J

    return-object v0
.end method

.method d()Z
    .registers 7

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bytedance/applog/a/b;->c:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->o()I

    move-result v0

    if-eqz v0, :cond_2f

    .line 45
    iget-object v0, p0, Lcom/bytedance/applog/a/b;->c:Lcom/bytedance/applog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_32

    .line 47
    iget-object v1, p0, Lcom/bytedance/applog/a/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/applog/a/b;->c:Lcom/bytedance/applog/b/i;

    .line 48
    invoke-virtual {v2}, Lcom/bytedance/applog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/applog/c/a;->a()Lcom/bytedance/applog/util/UriConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/applog/util/UriConfig;->getActiveUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIAppParam()Lcom/bytedance/applog/IAppParam;

    move-result-object v5

    .line 47
    invoke-static {v1, v2, v3, v4, v5}, Lcom/bytedance/applog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/IAppParam;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bytedance/applog/c/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/applog/a/b;->b:Z

    .line 53
    :cond_2f
    :goto_2f
    iget-boolean v0, p0, Lcom/bytedance/applog/a/b;->b:Z

    return v0

    .line 50
    :cond_32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "ac"

    return-object v0
.end method
