.class Lcom/bytedance/tea/crash/e/a/g;
.super Lcom/bytedance/tea/crash/e/a/c;
.source "JavaCrashAssembly.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V
    .registers 5

    .prologue
    .line 17
    sget-object v0, Lcom/bytedance/tea/crash/c;->b:Lcom/bytedance/tea/crash/c;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/tea/crash/e/a/c;-><init>(Lcom/bytedance/tea/crash/c;Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;
    .registers 5

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/bytedance/tea/crash/e/a/c;->a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object v0

    .line 23
    const-string v1, "app_count"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/bytedance/tea/crash/e/a/g;->c(Lcom/bytedance/tea/crash/c/a;)V

    .line 27
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/c/b;->a(Landroid/content/Context;)Lcom/bytedance/tea/crash/c/b;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 31
    invoke-static {}, Lcom/bytedance/tea/crash/h;->c()Lcom/bytedance/tea/crash/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/tea/crash/e/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 32
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/g;->c:Lcom/bytedance/tea/crash/d;

    invoke-interface {v2}, Lcom/bytedance/tea/crash/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/tea/crash/c/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/c/a;->a(Lcom/bytedance/tea/crash/c/b;)Lcom/bytedance/tea/crash/c/a;

    .line 34
    iget-object v2, p0, Lcom/bytedance/tea/crash/e/a/g;->a:Lcom/bytedance/tea/crash/c;

    invoke-static {v0, v1, v2}, Lcom/bytedance/tea/crash/g/k;->a(Lcom/bytedance/tea/crash/c/a;Lcom/bytedance/tea/crash/c/b;Lcom/bytedance/tea/crash/c;)V

    .line 35
    return-object v0
.end method
