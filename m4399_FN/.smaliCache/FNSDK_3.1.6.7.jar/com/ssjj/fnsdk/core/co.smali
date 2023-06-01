.class Lcom/ssjj/fnsdk/core/co;
.super Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;


# instance fields
.field final synthetic g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic i:Landroid/app/Activity;

.field private final synthetic j:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/co;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/co;->i:Landroid/app/Activity;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/co;->j:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    invoke-direct {p0, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .registers 10

    const-string v0, "tempName"

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/co;->d:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelTempLogin()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-nez v1, :cond_18

    return-void

    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5b

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v0, "temp_login_req_err"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/co;->e:Ljava/lang/String;

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/co;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4c

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u767b\u5f55\u8bf7\u6c42\u6709\u8bef ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4e

    :cond_4c
    const-string p1, "\u767b\u5f55\u8bf7\u6c42\u6709\u8bef"

    :goto_4e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/co;->i:Landroid/app/Activity;

    invoke-virtual {v0, v4, v2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setTempAuto(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    :goto_57
    invoke-interface {v0, v3, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_5b
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/entity/NetData;->parse(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/entity/NetData;

    move-result-object v4

    if-nez v4, :cond_81

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/co;->i:Landroid/app/Activity;

    invoke-virtual {v0, v4, v2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setTempAuto(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v2, "temp_login_ret_err"

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u6c42\u8fd4\u56de\u6709\u8bef\uff1a"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    :cond_81
    iget-object p1, v4, Lcom/ssjj/fnsdk/core/entity/NetData;->msg:Ljava/lang/String;

    iget v5, v4, Lcom/ssjj/fnsdk/core/entity/NetData;->code:I

    const-string v6, ""

    if-ne v5, v3, :cond_be

    :try_start_89
    new-instance v5, Lorg/json/JSONObject;

    iget-object v4, v4, Lcom/ssjj/fnsdk/core/entity/NetData;->data:Ljava/lang/String;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "tempUid"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_89 .. :try_end_96} :catch_a3

    :try_start_96
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bb

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_a0
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_a0} :catch_a1

    goto :goto_bb

    :catch_a1
    move-exception v0

    goto :goto_a5

    :catch_a3
    move-exception v0

    move-object v4, v6

    :goto_a5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "err: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :cond_bb
    :goto_bb
    move-object v0, v6

    move-object v6, v4

    goto :goto_bf

    :cond_be
    move-object v0, v6

    :goto_bf
    if-eqz v6, :cond_132

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_cc

    goto :goto_132

    :cond_cc
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/co;->j:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    invoke-static {v1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    if-nez v1, :cond_e5

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    new-instance v4, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;-><init>()V

    invoke-static {v1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    :cond_e5
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    iput-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempName:Ljava/lang/String;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/co;->c:Landroid/content/Context;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v4, "temp_uid"

    invoke-virtual {v1, v4, v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "temp_name"

    invoke-virtual {v1, v4, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v4, "temp_login_succ"

    invoke-virtual {v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/co;->i:Landroid/app/Activity;

    invoke-virtual {v0, v4, v3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setTempAuto(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_159

    :cond_132
    :goto_132
    if-eqz p1, :cond_13e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_140

    :cond_13e
    const-string p1, "\u751f\u6210uid\u4e3a\u7a7a"

    :cond_140
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/co;->i:Landroid/app/Activity;

    invoke-virtual {v0, v4, v2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setTempAuto(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/co;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_159
    return-void
.end method
