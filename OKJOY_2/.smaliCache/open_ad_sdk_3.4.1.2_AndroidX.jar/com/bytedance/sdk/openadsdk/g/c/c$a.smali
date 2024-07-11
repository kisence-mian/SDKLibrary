.class public Lcom/bytedance/sdk/openadsdk/g/c/c$a;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/c/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/g/c/c;
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

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->a:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->b:Lorg/json/JSONObject;

    .line 137
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/c/c$a;
    .registers 4

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 140
    return-object v1

    .line 143
    :cond_8
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const-string p0, "localId"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    const-string v2, "event"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    if-eqz v0, :cond_27

    .line 147
    new-instance v2, Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/g/c/c$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_28

    return-object v2

    .line 150
    :cond_27
    goto :goto_29

    .line 149
    :catchall_28
    move-exception p0

    .line 152
    :goto_29
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    .line 156
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_26

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 159
    :try_start_11
    const-string v1, "localId"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "event"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    .line 162
    goto :goto_21

    .line 161
    :catchall_20
    move-exception v1

    .line 164
    :goto_21
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->a:Ljava/lang/String;

    return-object v0
.end method
