.class public abstract Lcom/ss/android/socialbase/appdownloader/a/a;
.super Ljava/lang/Object;
.source "AbsDevicePlan.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/a/e;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/ss/android/socialbase/downloader/g/a;

.field protected final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->b:Lcom/ss/android/socialbase/downloader/g/a;

    .line 24
    iput-object p3, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->c:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    .line 29
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 30
    return v1

    .line 32
    :cond_6
    invoke-virtual {p0}, Lcom/ss/android/socialbase/appdownloader/a/a;->b()Landroid/content/Intent;

    move-result-object v0

    .line 34
    :try_start_a
    iget-object v2, p0, Lcom/ss/android/socialbase/appdownloader/a/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_19

    if-eqz v0, :cond_18

    .line 35
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_18
    goto :goto_27

    .line 37
    :catchall_19
    move-exception v0

    .line 38
    invoke-static {}, Lcom/ss/android/socialbase/downloader/c/a;->a()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 39
    const-string v2, "AbsDevicePlan"

    const-string v3, "check is valid failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_27
    :goto_27
    return v1
.end method
