.class public Lcom/ss/android/socialbase/appdownloader/a/f;
.super Lcom/ss/android/socialbase/appdownloader/a/a;
.source "M1UnknownSourcePlan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ss/android/socialbase/appdownloader/a/a;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .registers 3

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    return-object v0
.end method
