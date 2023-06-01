.class Lcom/ssjj/fnsdk/core/cp;
.super Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;


# instance fields
.field final synthetic g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

.field private final synthetic h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cp;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/cp;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/cp;->i:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .registers 8

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/cp;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cp;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelBindLogin()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cp;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-nez v0, :cond_16

    return-void

    :cond_16
    const-string v0, ")"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cp;->e:Ljava/lang/String;

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cp;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_42

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "\u8bf7\u6c42\u6709\u8bef ("

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cp;->e:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_44

    :cond_42
    const-string p1, "\u8bf7\u6c42\u6709\u8bef"

    :goto_44
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cp;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v3, "temp_bind_fail_req_err"

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/cp;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cp;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_53
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/entity/NetData;->parse(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/entity/NetData;

    move-result-object p1

    if-nez p1, :cond_68

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cp;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v0, "temp_bind_fail_ret_err"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cp;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v0, "\u8fd4\u56de\u6709\u8bef"

    invoke-interface {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_68
    iget v3, p1, Lcom/ssjj/fnsdk/core/entity/NetData;->code:I

    if-ne v3, v2, :cond_99

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cp;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const-string v3, "temp_bind_succ"

    invoke-virtual {v0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;-><init>()V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cp;->i:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/cp;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->bindType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cp;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/NetData;->msg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    goto :goto_cc

    :cond_99
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/cp;->g:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/ssjj/fnsdk/core/entity/NetData;->code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/entity/NetData;->msg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "temp_bind_fail"

    invoke-virtual {v3, v4, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cp;->h:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/NetData;->msg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_cc
    invoke-interface {v0, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method
