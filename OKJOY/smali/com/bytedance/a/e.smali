.class final Lcom/bytedance/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/a/e$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/String;I)I
    .registers 3

    .prologue
    .line 38
    .line 40
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p1

    .line 44
    :goto_4
    return p1

    .line 41
    :catch_5
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4
.end method

.method static a(Ljava/lang/String;J)J
    .registers 4

    .prologue
    .line 27
    .line 29
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide p1

    .line 33
    :goto_4
    return-wide p1

    .line 30
    :catch_5
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4
.end method

.method static a(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/bytedance/a/e;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    if-nez p1, :cond_3

    .line 59
    :goto_2
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

    new-instance v1, Lcom/bytedance/a/e$a;

    invoke-direct {v1, p1, p0}, Lcom/bytedance/a/e$a;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 85
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 86
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_7
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 18
    const/16 v2, 0x80

    :try_start_7
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_a} :catch_f

    move-result-object v1

    .line 19
    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 22
    :cond_e
    :goto_e
    return v0

    .line 20
    :catch_f
    move-exception v1

    goto :goto_e
.end method
