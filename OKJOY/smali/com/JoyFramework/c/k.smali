.class Lcom/JoyFramework/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;)V
    .registers 2

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/JoyFramework/c/k;->a:Lcom/JoyFramework/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/c/k;->a:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1376
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1378
    const-string v1, "showingType"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1379
    iget-object v1, p0, Lcom/JoyFramework/c/k;->a:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1380
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1386
    iget-object v0, p0, Lcom/JoyFramework/c/k;->a:Lcom/JoyFramework/c/e;

    invoke-virtual {v0, v1, v1}, Lcom/JoyFramework/c/e;->a(ZI)V

    .line 1387
    return-void
.end method
