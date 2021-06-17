.class public Lcom/tapjoy/TapjoyAppSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static b:Lcom/tapjoy/TapjoyAppSettings;


# instance fields
.field a:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/tapjoy/TapjoyAppSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/tapjoy/TapjoyAppSettings;->c:Landroid/content/Context;

    .line 23
    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    .line 25
    nop

    .line 1038
    const-string v1, "tapjoyLogLevel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 1039
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1040
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreLoggingLevel from sharedPref -- loggingLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 1087
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 26
    :cond_3a
    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyAppSettings;
    .registers 1

    .line 29
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->b:Lcom/tapjoy/TapjoyAppSettings;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "applicationContext"    # Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v1, "initializing app settings"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/tapjoy/TapjoyAppSettings;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyAppSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/TapjoyAppSettings;->b:Lcom/tapjoy/TapjoyAppSettings;

    .line 35
    return-void
.end method


# virtual methods
.method public clearLoggingLevel()V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    const-string v1, "tapjoyLogLevel"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/tapjoy/TapjoyLog;->isLoggingEnabled()Z

    move-result v0

    .line 81
    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tapjoy remote device debugging \'Disabled\'. The SDK Debug-setting is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_23

    const-string v3, "\'Enabled\'"

    goto :goto_25

    :cond_23
    const-string v3, "\'Disabled\'"

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 83
    return-void
.end method

.method public getConnectResult(Ljava/lang/String;J)Ljava/lang/String;
    .registers 11
    .param p1, "paramsHash"    # Ljava/lang/String;
    .param p2, "currentTimeMillis"    # J

    .line 141
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-string v1, "connectResult"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 144
    return-object v2

    .line 147
    :cond_10
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    .line 148
    const-string v3, "connectParamsHash"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 149
    iget-object v1, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-wide/16 v3, -0x1

    const-string v5, "connectResultExpires"

    invoke-interface {v1, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 150
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_38

    cmp-long v1, v3, p2

    if-ltz v1, :cond_39

    .line 151
    :cond_38
    return-object v0

    .line 154
    :cond_39
    return-object v2
.end method

.method public removeConnectResult()V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    const-string v1, "connectParamsHash"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 128
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    const-string v2, "connectResult"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v1, "connectResultExpires"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v2, "Removed connect result"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 138
    :cond_28
    return-void
.end method

.method public saveConnectResultAndParams(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "paramsHash"    # Ljava/lang/String;
    .param p3, "expires"    # J

    .line 106
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {p2}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_37

    .line 110
    :cond_d
    iget-object v0, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    const-string v1, "connectResult"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v1, "connectParamsHash"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-wide/16 v1, 0x0

    const-string v3, "connectResultExpires"

    cmp-long v4, p3, v1

    if-ltz v4, :cond_29

    .line 115
    invoke-interface {v0, v3, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_2c

    .line 118
    :cond_29
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    :goto_2c
    sget-object v1, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v2, "Stored connect result"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    return-void

    .line 107
    :cond_37
    :goto_37
    return-void
.end method

.method public saveLoggingLevel(Ljava/lang/String;)V
    .registers 6
    .param p1, "level"    # Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 52
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    const-string v1, "saveLoggingLevel -- server logging level is NULL or Empty string"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 56
    :cond_e
    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveLoggingLevel -- currentLevel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";newLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/js;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 58
    :cond_3e
    iget-object v1, p0, Lcom/tapjoy/TapjoyAppSettings;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 59
    const-string v2, "tapjoyLogLevel"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    iput-object p1, p0, Lcom/tapjoy/TapjoyAppSettings;->a:Ljava/lang/String;

    .line 63
    nop

    .line 2087
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/tapjoy/TapjoyLog;->a(Ljava/lang/String;Z)V

    .line 66
    :cond_53
    invoke-static {}, Lcom/tapjoy/TapjoyLog;->isLoggingEnabled()Z

    move-result v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tapjoy remote device debugging set to \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. The SDK Debug-setting is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_6d

    const-string v1, "\'Enabled\'"

    goto :goto_6f

    :cond_6d
    const-string v1, "\'Disabled\'"

    :goto_6f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
