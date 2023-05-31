.class public abstract Lcom/ss/android/socialbase/appdownloader/a/a;
.super Ljava/lang/Object;
.source "AbsDevicePlan.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/a/e;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->a:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->b:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->a:Landroid/content/Context;

    if-nez v1, :cond_6

    .line 40
    :cond_5
    :goto_5
    return v0

    .line 30
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/a/a;->b()Landroid/content/Intent;

    move-result-object v1

    .line 32
    :try_start_a
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_18

    move-result-object v1

    if-eqz v1, :cond_5

    .line 33
    const/4 v0, 0x1

    goto :goto_5

    .line 35
    :catch_18
    move-exception v1

    .line 36
    invoke-static {}, Lcom/ss/android/socialbase/downloader/f/a;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37
    const-string v2, "AbsDevicePlan"

    const-string v3, "check is valid failed!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
