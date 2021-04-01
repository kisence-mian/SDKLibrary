.class public Lcom/ss/android/socialbase/appdownloader/a/i;
.super Lcom/ss/android/socialbase/appdownloader/a/a;
.source "Vivo2DevicePlan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.filemanager.OPEN_FOLDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v1, "com.android.filemanager.OPEN_FOLDER"

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/a/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "com.iqoo.secure"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    return-object v0
.end method
