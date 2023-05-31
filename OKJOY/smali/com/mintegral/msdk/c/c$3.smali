.class final Lcom/mintegral/msdk/c/c$3;
.super Lcom/mintegral/msdk/c/a/d;
.source "SettingRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/c/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/c/c;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/c/c;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mintegral/msdk/c/c$3;->a:Lcom/mintegral/msdk/c/c;

    invoke-direct {p0}, Lcom/mintegral/msdk/c/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 191
    invoke-static {}, Lcom/mintegral/msdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get custom id error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 168
    if-eqz p1, :cond_45

    .line 169
    :try_start_2
    const-string v0, "system_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 171
    sput-object v0, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "sys_id"

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_23
    const-string v0, "sysbkup_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    sget-object v1, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 176
    sput-object v0, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/mintegral/msdk/base/a/a/a;->a()Lcom/mintegral/msdk/base/a/a/a;

    move-result-object v0

    const-string v1, "bkup_id"

    sget-object v2, Lcom/mintegral/msdk/base/common/a;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mintegral/msdk/base/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_44
    :goto_44
    return-void

    .line 181
    :cond_45
    invoke-static {}, Lcom/mintegral/msdk/c/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom id return data null"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    goto :goto_44

    .line 182
    :catch_4f
    move-exception v0

    .line 183
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_44

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44
.end method
