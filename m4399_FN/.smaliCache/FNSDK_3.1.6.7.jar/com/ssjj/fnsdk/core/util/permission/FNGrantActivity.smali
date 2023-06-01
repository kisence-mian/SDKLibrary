.class public Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Z

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->c:I

    return-void
.end method

.method private a(ILcom/ssjj/fnsdk/core/util/permission/GrantHelper;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "\u6743\u9650\u7533\u8bf7"

    const-string v1, "\u4e3a\u4fdd\u8bc1\u6e38\u620f\u6b63\u5e38\u8fd0\u884c\uff0c\u8bf7\u5f00\u542f\u76f8\u5e94\u6743\u9650\uff0c\u5426\u5219\u53ef\u80fd\u4f1a\u5f71\u54cd\u6e38\u620f\u7684\u6b63\u5e38\u8fd0\u884c\u3002"

    const-string v2, "\u53d6\u6d88"

    const-string v3, "\u53bb\u8bbe\u7f6e"

    if-eqz p2, :cond_42

    invoke-virtual {p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->title([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->title([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    invoke-virtual {p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->rationale([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->rationale([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_26
    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->btnCancel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->btnCancel()Ljava/lang/String;

    move-result-object v2

    :cond_34
    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->btnOk()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->btnOk()Ljava/lang/String;

    move-result-object v3

    :cond_42
    new-instance p2, Lcom/ssjj/fnsdk/core/util/permission/a;

    invoke-direct {p2, p0, p0, p1, p3}, Lcom/ssjj/fnsdk/core/util/permission/a;-><init>(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/util/permission/a;->title(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->message(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->btnCancel(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->btnOk(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/util/permission/GrantDialog;->show()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_3d

    :try_start_2
    const-string v0, "requestCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "requestPermission"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    goto :goto_31

    :cond_18
    const-string v1, "Start request permissions..."

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_40

    :cond_31
    :goto_31
    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b(I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    goto :goto_40

    :catch_39
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->finish()V

    :goto_40
    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->c:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 6

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    const/4 p1, 0x1

    return p1

    :catch_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a:Z

    return p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method protected b()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_f

    :catchall_e
    move-exception v0

    :goto_f
    return-void
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->overridePendingTransition(II)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a()V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(Landroid/content/Intent;)V

    goto :goto_16

    :cond_13
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->finish()V

    :goto_16
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hook request result, requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_22
    array-length v1, p2

    if-lt v0, v1, :cond_76

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6b

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(I)Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;

    move-result-object p2

    if-eqz p2, :cond_55

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;->needShowCustomRequestDialog()Z

    move-result p3

    if-nez p3, :cond_3e

    goto :goto_55

    :cond_3e
    const-string p3, "Show custom request permission dialog"

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a(ILcom/ssjj/fnsdk/core/util/permission/GrantHelper;[Ljava/lang/String;)V

    goto :goto_75

    :cond_55
    :goto_55
    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object p2

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(I[Ljava/lang/String;)V

    goto :goto_72

    :cond_6b
    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b(I)V

    :goto_72
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->finish()V

    :goto_75
    return-void

    :cond_76
    aget-object v1, p2, v0

    aget v2, p3, v0

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method protected onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a:Z

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a0

    iget v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "##onResume before settings, denied permissions size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8c

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "##onResume after settings, denied permissions size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7f

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->c:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->a(I[Ljava/lang/String;)V

    goto :goto_88

    :cond_7f
    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v0

    iget v1, p0, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->c:I

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->b(I)V

    :goto_88
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/util/permission/FNGrantActivity;->finish()V

    goto :goto_a0

    :cond_8c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_a0
    :goto_a0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
