.class public Lokjoy/j/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lokjoy/t/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/j/b;->onFail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lokjoy/j/b;


# direct methods
.method public constructor <init>(Lokjoy/j/b;I)V
    .registers 3

    iput-object p1, p0, Lokjoy/j/b$a;->b:Lokjoy/j/b;

    iput p2, p0, Lokjoy/j/b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelButtonClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onSureButtonClick(Landroid/view/View;)V
    .registers 5

    iget p1, p0, Lokjoy/j/b$a;->a:I

    const/16 v0, 0x1f42

    if-ne p1, v0, :cond_44

    iget-object p1, p0, Lokjoy/j/b$a;->b:Lokjoy/j/b;

    iget-object p1, p1, Lokjoy/j/b;->b:Lokjoy/j/c;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lokjoy/j/b$a;->b:Lokjoy/j/b;

    iget-object v0, v0, Lokjoy/j/b;->b:Lokjoy/j/c;

    iget-object v0, v0, Lokjoy/c/b;->a:Landroid/app/Activity;

    const-class v1, Lcom/okjoy/okjoysdk/usercenter/activity/OkJoyRealNameActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "isPay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getInstance()Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/okjoy/okjoysdk/api/api/OKJOYSDK;->getmActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_4f

    :cond_44
    iget-object p1, p0, Lokjoy/j/b$a;->b:Lokjoy/j/b;

    iget-object p1, p1, Lokjoy/j/b;->b:Lokjoy/j/c;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_4f
    return-void
.end method
