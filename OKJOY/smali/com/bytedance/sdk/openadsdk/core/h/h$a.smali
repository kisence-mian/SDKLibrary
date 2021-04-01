.class Lcom/bytedance/sdk/openadsdk/core/h/h$a;
.super Landroid/content/BroadcastReceiver;
.source "SdkDnsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/h;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/h;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/h;Lcom/bytedance/sdk/openadsdk/core/h/h$1;)V
    .registers 3

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/h$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/h/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 131
    if-nez p2, :cond_3

    .line 149
    :cond_2
    :goto_2
    return-void

    .line 135
    :cond_3
    const-string v0, "b_msg_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 136
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 137
    const-string v0, "b_msg_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    :try_start_19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/h;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/h$a;->a:Lcom/bytedance/sdk/openadsdk/core/h/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/h;->a(Lcom/bytedance/sdk/openadsdk/core/h/h;)Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(Lorg/json/JSONObject;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2f} :catch_30

    goto :goto_2

    .line 144
    :catch_30
    move-exception v0

    goto :goto_2
.end method
