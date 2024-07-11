.class public Lcom/bytedance/sdk/openadsdk/g/c/d;
.super Ljava/lang/Object;
.source "LogUploaderImpl4MultiProcess.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/g/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->d()V

    .line 16
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V
    .registers 2

    .line 21
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->c(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 23
    goto :goto_d

    .line 22
    :catchall_c
    move-exception p1

    .line 24
    :goto_d
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/g/a/a;Z)V
    .registers 5

    .line 29
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/g/a/a;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/g/c/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a(Ljava/lang/String;Z)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    .line 32
    goto :goto_1a

    .line 31
    :catchall_19
    move-exception p1

    .line 33
    :goto_1a
    return-void
.end method

.method public b()V
    .registers 1

    .line 38
    return-void
.end method
