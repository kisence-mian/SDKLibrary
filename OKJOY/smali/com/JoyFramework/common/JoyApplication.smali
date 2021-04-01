.class public Lcom/JoyFramework/common/JoyApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static mAppContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/JoyFramework/common/JoyApplication;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isPortraitOrientation()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 93
    sget-object v1, Lcom/JoyFramework/common/JoyApplication;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 94
    if-ne v1, v0, :cond_10

    .line 97
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 104
    :try_start_3
    invoke-static {p0}, Lcom/bun/miitmdid/core/JLibrary;->InitEntry(Landroid/content/Context;)Lcom/bun/miitmdid/core/JLibrary$ReturnStatus;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 108
    :goto_6
    return-void

    .line 105
    :catch_7
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 22
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 33
    invoke-static {}, Lcom/JoyFramework/crash/LCrashHandler;->getInstance()Lcom/JoyFramework/crash/LCrashHandler;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lcom/JoyFramework/crash/LCrashHandler;->init(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/JoyFramework/common/JoyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/JoyFramework/common/JoyApplication;->mAppContext:Landroid/content/Context;

    .line 39
    :try_start_10
    const-string v0, "UserActionSetId"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 41
    const-string v1, "AppSecretKey"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 43
    const-string v2, "joyAgent"

    invoke-static {p0, v2}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 45
    invoke-static {p0, v0, v1, v2}, Lcom/qq/gdt/action/GDTAction;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/JoyFramework/a/a;->I:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_6e

    .line 57
    :cond_3a
    :goto_3a
    :try_start_3a
    const-string v0, "Aid"

    invoke-static {p0, v0}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 59
    const-string v1, "Channel"

    invoke-static {p0, v1}, Lcom/JoyFramework/d/ar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 63
    new-instance v2, Lcom/bytedance/applog/InitConfig;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/bytedance/applog/InitConfig;->setUriConfig(I)Lcom/bytedance/applog/InitConfig;

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/applog/AppLog;->setEnableLog(Z)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bytedance/applog/InitConfig;->setEnablePlay(Z)Lcom/bytedance/applog/InitConfig;

    .line 76
    invoke-static {p0, v2}, Lcom/bytedance/applog/AppLog;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/JoyFramework/a/a;->H:Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_69} :catch_73

    .line 86
    :cond_69
    :goto_69
    return-void

    .line 47
    :cond_6a
    :try_start_6a
    invoke-static {p0, v0, v1}, Lcom/qq/gdt/action/GDTAction;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_37

    .line 52
    :catch_6e
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    .line 82
    :catch_73
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69
.end method
