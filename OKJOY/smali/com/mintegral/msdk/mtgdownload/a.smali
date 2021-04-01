.class public final Lcom/mintegral/msdk/mtgdownload/a;
.super Ljava/lang/Object;
.source "DeltaUpdate.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    :try_start_0
    const-string v0, "bspatch"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mintegral/msdk/mtgdownload/a;->a:Z
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_8} :catch_9

    .line 57
    :goto_8
    return-void

    .line 55
    :catch_9
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mintegral/msdk/mtgdownload/a;->a:Z

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method
