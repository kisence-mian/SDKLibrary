.class Lcom/bytedance/tea/crash/e/a/a;
.super Lcom/bytedance/tea/crash/e/a/c;
.source "ANRAssembly.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V
    .registers 5

    .line 22
    sget-object v0, Lcom/bytedance/tea/crash/c;->d:Lcom/bytedance/tea/crash/c;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/tea/crash/e/a/c;-><init>(Lcom/bytedance/tea/crash/c;Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;
    .registers 5

    .line 27
    invoke-super {p0, p1}, Lcom/bytedance/tea/crash/e/a/c;->a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/c/b;->a(Landroid/content/Context;)Lcom/bytedance/tea/crash/c/b;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 33
    invoke-static {}, Lcom/bytedance/tea/crash/h;->c()Lcom/bytedance/tea/crash/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/e/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 34
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/a;->c:Lcom/bytedance/tea/crash/d;

    invoke-interface {v1}, Lcom/bytedance/tea/crash/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/c/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Lcom/bytedance/tea/crash/c/b;)Lcom/bytedance/tea/crash/c/a;

    .line 36
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/g/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "process_name"

    invoke-virtual {p1, v2, v1}, Lcom/bytedance/tea/crash/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/a;->a:Lcom/bytedance/tea/crash/c;

    invoke-static {p1, v0, v1}, Lcom/bytedance/tea/crash/g/k;->a(Lcom/bytedance/tea/crash/c/a;Lcom/bytedance/tea/crash/c/b;Lcom/bytedance/tea/crash/c;)V

    .line 38
    return-object p1
.end method
