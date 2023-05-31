.class public Landroid/support/v4/app/AppLaunchChecker;
.super Ljava/lang/Object;
.source "AppLaunchChecker.java"


# static fields
.field private static final KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String; = "startedFromLauncher"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "android.support.AppLaunchChecker"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static hasStartedFromLauncher(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string v0, "android.support.AppLaunchChecker"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "startedFromLauncher"

    .line 52
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onActivityCreate(Landroid/app/Activity;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v2, "android.support.AppLaunchChecker"

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "startedFromLauncher"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 82
    :cond_f
    :goto_f
    return-void

    .line 72
    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_f

    .line 77
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "android.intent.category.LAUNCHER"

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "android.intent.category.LEANBACK_LAUNCHER"

    .line 79
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 80
    :cond_32
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "startedFromLauncher"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_f
.end method
