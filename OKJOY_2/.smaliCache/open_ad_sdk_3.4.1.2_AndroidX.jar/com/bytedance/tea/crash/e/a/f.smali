.class Lcom/bytedance/tea/crash/e/a/f;
.super Lcom/bytedance/tea/crash/e/a/c;
.source "CustomJavaCrashAssembly.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V
    .registers 5

    .line 19
    sget-object v0, Lcom/bytedance/tea/crash/c;->h:Lcom/bytedance/tea/crash/c;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/bytedance/tea/crash/e/a/c;-><init>(Lcom/bytedance/tea/crash/c;Landroid/content/Context;Lcom/bytedance/tea/crash/e/a/b;Lcom/bytedance/tea/crash/e/a/d;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;
    .registers 4

    .line 24
    invoke-super {p0, p1}, Lcom/bytedance/tea/crash/e/a/c;->a(Lcom/bytedance/tea/crash/c/a;)Lcom/bytedance/tea/crash/c/a;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/bytedance/tea/crash/e/a/f;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/c/b;->a(Landroid/content/Context;)Lcom/bytedance/tea/crash/c/b;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/bytedance/tea/crash/h;->a()Lcom/bytedance/tea/crash/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/e/a;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 28
    invoke-static {}, Lcom/bytedance/tea/crash/h;->c()Lcom/bytedance/tea/crash/e/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/e/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/bytedance/tea/crash/e/a/f;->c:Lcom/bytedance/tea/crash/d;

    invoke-interface {v1}, Lcom/bytedance/tea/crash/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/c/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/c/a;->a(Lcom/bytedance/tea/crash/c/b;)Lcom/bytedance/tea/crash/c/a;

    .line 31
    return-object p1
.end method
