.class Lcom/JoyFramework/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/JoyFramework/d/e$e;


# instance fields
.field final synthetic a:Lcom/JoyFramework/c/e;


# direct methods
.method constructor <init>(Lcom/JoyFramework/c/e;)V
    .registers 2

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/JoyFramework/c/l;->a:Lcom/JoyFramework/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1393
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/JoyFramework/c/l;->a:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    const-class v2, Lcom/JoyFramework/module/user/fragment/account/BaseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1394
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1396
    const-string v1, "showingType"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1397
    iget-object v1, p0, Lcom/JoyFramework/c/l;->a:Lcom/JoyFramework/c/e;

    iget-object v1, v1, Lcom/JoyFramework/c/e;->o:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1398
    return-void
.end method
