.class Lcom/ssjj/fnsdk/core/cu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_184

    :pswitch_5
    goto/16 :goto_182

    :pswitch_7
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_182

    :pswitch_14
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NET_BREAK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_I_KNOW:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNetWorkError()V

    goto/16 :goto_182

    :pswitch_70
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNormalUpdateLoading()V

    goto/16 :goto_182

    :pswitch_83
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onForceUpdateLoading()V

    goto/16 :goto_182

    :pswitch_96
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCheckVersionFailure()V

    goto/16 :goto_182

    :pswitch_a9
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelNormalUpdate()V

    goto/16 :goto_182

    :pswitch_bc
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onCancelForceUpdate()V

    goto/16 :goto_182

    :pswitch_cf
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotSDCard()V

    goto/16 :goto_182

    :pswitch_e2
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    if-eqz p1, :cond_182

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotNewVersion()V

    goto/16 :goto_182

    :pswitch_f5
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    goto/16 :goto_182

    :pswitch_100
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    goto :goto_182

    :pswitch_10a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_127

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_127

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_127
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)V

    goto :goto_182

    :pswitch_12d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATING:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/widget/ProgressBar;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cu;->a:Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->e(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_182
    :goto_182
    :pswitch_182
    return-void

    nop

    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_12d
        :pswitch_10a
        :pswitch_100
        :pswitch_f5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_e2
        :pswitch_cf
        :pswitch_bc
        :pswitch_a9
        :pswitch_96
        :pswitch_83
        :pswitch_70
        :pswitch_14
        :pswitch_182
        :pswitch_7
    .end packed-switch
.end method
