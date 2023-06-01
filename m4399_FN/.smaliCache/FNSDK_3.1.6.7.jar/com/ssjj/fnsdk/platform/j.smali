.class Lcom/ssjj/fnsdk/platform/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/j;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/platform/j;)Lcom/ssjj/fnsdk/platform/FNAdapterDemo;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/platform/j;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logBeforeLogin()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/platform/DemoUtil;->getDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u63a5\u53e3 login();"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/platform/k;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcom/ssjj/fnsdk/platform/k;-><init>(Lcom/ssjj/fnsdk/platform/j;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/l;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/ssjj/fnsdk/platform/l;-><init>(Lcom/ssjj/fnsdk/platform/j;Landroid/app/Activity;)V

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/m;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/ssjj/fnsdk/platform/m;-><init>(Lcom/ssjj/fnsdk/platform/j;Landroid/app/Activity;)V

    const-string v2, "\u767b\u5f55\u53d6\u6d88"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    const-string v2, "fntest"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "name_which"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/j;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    invoke-static {v2, v3, v1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;I)Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u9646\u8d26\u53f7\uff1a\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/platform/n;

    iget-object v4, p0, Lcom/ssjj/fnsdk/platform/j;->b:Landroid/app/Activity;

    invoke-direct {v3, p0, v4, v1}, Lcom/ssjj/fnsdk/platform/n;-><init>(Lcom/ssjj/fnsdk/platform/j;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
