.class Lcom/ssjj/fnsdk/core/l;
.super Lcom/ssjj/fnsdk/core/FNUpdateManager$b;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

.field private final synthetic i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

.field private final synthetic j:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 15

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/l;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Boolean;)V
    .registers 8

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$b;)V

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/l;->d:Z

    if-eqz p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    if-nez p1, :cond_14

    return-void

    :cond_14
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/l;->f:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_30

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/l;->f:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_140

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_85

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_85

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->g:Landroid/app/Activity;

    const-string v0, "\u4e0b\u8f7d\u6210\u529f\uff0c\u4f46\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->g:Landroid/app/Activity;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b()I

    move-result v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/l;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->showUpdateDialog(Landroid/app/Activity;ILcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void

    :cond_85
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rename to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v1, :cond_10f

    new-instance p1, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_DOWNLOAD_FINISH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_CLICK_TO_INSTALL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->install(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_172

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FINISH:I

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string v2, ""

    invoke-interface {p1, v0, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_172

    :cond_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " \u91cd\u547d\u540d\u4e3a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->g:Landroid/app/Activity;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c()I

    move-result v1

    goto :goto_169

    :cond_140
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/l;->d:Z

    if-eqz p1, :cond_161

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_172

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_CANCEL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_172

    :cond_161
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->g:Landroid/app/Activity;

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d()I

    move-result v1

    :goto_169
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/l;->i:Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/l;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->showUpdateDialog(Landroid/app/Activity;ILcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :cond_172
    :goto_172
    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 8

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/l;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->g(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->g(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1d
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;JJ)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATING:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_67

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6b63\u5728\u5904\u7406"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_67
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_70
    return-void
.end method

.method protected onCancelled()V
    .registers 3

    invoke-super {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->onCancelled()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/l;->a:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$b;)V

    return-void
.end method
