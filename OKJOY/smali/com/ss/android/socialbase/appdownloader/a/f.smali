.class public Lcom/ss/android/socialbase/appdownloader/a/f;
.super Lcom/ss/android/socialbase/appdownloader/a/a;
.source "Oppo1DevicePlan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.filemanager.intent.action.BROWSER_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v1, "CurrentDir"

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "CurrentMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    return-object v0
.end method
