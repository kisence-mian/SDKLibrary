.class public Lcom/ss/android/socialbase/appdownloader/a/b;
.super Lcom/ss/android/socialbase/appdownloader/a/a;
.source "AndroidUnknownSourcePlan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/ss/android/socialbase/appdownloader/a/a;-><init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public b()Landroid/content/Intent;
    .registers 4

    .line 23
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/a/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 26
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    return-object v0
.end method
