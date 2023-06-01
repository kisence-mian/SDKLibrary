.class Lcom/ssjj/fnsdk/platform/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/platform/a;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iput-object p2, p0, Lcom/ssjj/fnsdk/platform/a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ssjj/fnsdk/platform/a;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/a;->a:Lcom/ssjj/fnsdk/platform/FNAdapterDemo;

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/platform/FNAdapterDemo;->a(Lcom/ssjj/fnsdk/platform/FNAdapterDemo;Landroid/app/Activity;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/platform/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logAppOpen(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/platform/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ssjj/fnsdk/platform/DemoUtil;->getDialog(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u521d\u59cb\u5316\u63a5\u53e3 init();"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\n\u521d\u59cb\u5316\n"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/b;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/a;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/a;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/ssjj/fnsdk/platform/b;-><init>(Lcom/ssjj/fnsdk/platform/a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    const-string v2, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/ssjj/fnsdk/platform/c;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/a;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/a;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/ssjj/fnsdk/platform/c;-><init>(Lcom/ssjj/fnsdk/platform/a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v1, Lcom/ssjj/fnsdk/platform/d;

    iget-object v2, p0, Lcom/ssjj/fnsdk/platform/a;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ssjj/fnsdk/platform/a;->c:Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/ssjj/fnsdk/platform/d;-><init>(Lcom/ssjj/fnsdk/platform/a;Landroid/app/Activity;Landroid/app/AlertDialog;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/platform/d;->start()V

    return-void
.end method
