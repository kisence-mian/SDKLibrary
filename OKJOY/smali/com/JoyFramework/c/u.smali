.class Lcom/JoyFramework/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/t;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/t;)V
    .registers 2

    .prologue
    .line 470
    iput-object p1, p0, Lcom/JoyFramework/c/u;->a:Lcom/JoyFramework/c/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 474
    :try_start_0
    sget-object v0, Lcom/JoyFramework/a/a;->ae:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 476
    iget-object v0, p0, Lcom/JoyFramework/c/u;->a:Lcom/JoyFramework/c/t;

    iget-object v0, v0, Lcom/JoyFramework/c/t;->c:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V

    .line 488
    :goto_f
    return-void

    .line 480
    :cond_10
    sget-object v0, Lcom/JoyFramework/a/a;->ae:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 481
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 483
    iget-object v0, p0, Lcom/JoyFramework/c/u;->a:Lcom/JoyFramework/c/t;

    iget-object v0, v0, Lcom/JoyFramework/c/t;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 484
    iget-object v0, p0, Lcom/JoyFramework/c/u;->a:Lcom/JoyFramework/c/t;

    iget-object v0, v0, Lcom/JoyFramework/c/t;->c:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_f

    .line 485
    :catch_2f
    move-exception v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public b()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/JoyFramework/c/u;->a:Lcom/JoyFramework/c/t;

    iget-object v0, v0, Lcom/JoyFramework/c/t;->c:Lcom/JoyFramework/c/e;

    invoke-static {v0}, Lcom/JoyFramework/c/e;->e(Lcom/JoyFramework/c/e;)V

    .line 494
    return-void
.end method
