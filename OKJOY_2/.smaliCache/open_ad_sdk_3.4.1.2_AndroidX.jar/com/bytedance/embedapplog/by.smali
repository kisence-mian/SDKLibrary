.class final Lcom/bytedance/embedapplog/by;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/by$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 52
    if-nez p1, :cond_3

    .line 53
    return-void

    .line 55
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 56
    const-string p0, "TrackerDr"

    .line 58
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/embedapplog/by$a;

    invoke-direct {v1, p1, p0}, Lcom/bytedance/embedapplog/by$a;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 18
    const/16 v0, 0x80

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 19
    if-eqz p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 20
    :catchall_f
    move-exception p0

    .line 22
    return v1
.end method
