.class public Lcom/bytedance/sdk/openadsdk/f/b/d;
.super Ljava/lang/Object;
.source "LogUploaderImpl4MultiProcess.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/b/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->d()V

    .line 16
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V
    .registers 3

    .prologue
    .line 21
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/f/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->c(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 24
    :goto_b
    return-void

    .line 22
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V
    .registers 6

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/f/a/b;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;Z)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 33
    :goto_18
    return-void

    .line 31
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public b()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method
