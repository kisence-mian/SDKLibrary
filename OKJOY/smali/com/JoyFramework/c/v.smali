.class Lcom/JoyFramework/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 532
    iput-object p1, p0, Lcom/JoyFramework/c/v;->b:Lcom/JoyFramework/c/e;

    iput-object p2, p0, Lcom/JoyFramework/c/v;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 536
    :try_start_0
    sget-object v0, Lcom/JoyFramework/a/a;->ae:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 538
    iget-object v0, p0, Lcom/JoyFramework/c/v;->b:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V

    .line 550
    :goto_d
    return-void

    .line 542
    :cond_e
    sget-object v0, Lcom/JoyFramework/a/a;->ae:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 543
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 545
    iget-object v0, p0, Lcom/JoyFramework/c/v;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 546
    iget-object v0, p0, Lcom/JoyFramework/c/v;->b:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_d

    .line 547
    :catch_29
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public b()V
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/JoyFramework/c/v;->b:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V

    .line 556
    return-void
.end method
