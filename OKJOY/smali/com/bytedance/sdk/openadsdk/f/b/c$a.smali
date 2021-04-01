.class public Lcom/bytedance/sdk/openadsdk/f/b/c$a;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/f/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->b:Lorg/json/JSONObject;

    .line 137
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/b/c$a;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    :cond_7
    :goto_7
    return-object v0

    .line 143
    :cond_8
    :try_start_8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v2, "localId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string v3, "event"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 146
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 147
    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_27} :catch_29

    move-object v0, v1

    goto :goto_7

    .line 149
    :catch_29
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_24

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 159
    :try_start_11
    const-string v1, "localId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "event"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1f} :catch_26

    .line 164
    :goto_1f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    .line 161
    :catch_26
    move-exception v1

    goto :goto_1f
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a:Ljava/lang/String;

    return-object v0
.end method
