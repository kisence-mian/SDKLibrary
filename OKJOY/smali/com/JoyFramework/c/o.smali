.class Lcom/JoyFramework/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$c;


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/m;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/m;)V
    .registers 2

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/JoyFramework/c/o;->a:Lcom/JoyFramework/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1436
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/c/o;->a:Lcom/JoyFramework/c/m;

    iget-object v1, v1, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1437
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1439
    const-string v1, "showingType"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1440
    const-string v1, "notAllowClose"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1441
    iget-object v1, p0, Lcom/JoyFramework/c/o;->a:Lcom/JoyFramework/c/m;

    iget-object v1, v1, Lcom/JoyFramework/c/m;->b:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1442
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 1446
    invoke-static {}, Lcom/JoyFramework/c/e;->a()Lcom/JoyFramework/c/e;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Lcom/JoyFramework/c/e;->a(ILjava/lang/Object;)V

    .line 1447
    return-void
.end method
