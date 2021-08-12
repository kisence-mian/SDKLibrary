.class public Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteUser(Landroid/content/Context;)V
    .registers 3

    .line 1
    const-string v0, "OK_JOY_SHARE_PREFERENCES_FILE_CURRENT_USER"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "OK_JOY_SHARED_PREFERENCES_KEY_CURRENT_USER"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;
    .registers 3

    .line 1
    const-string v0, "OK_JOY_SHARE_PREFERENCES_FILE_CURRENT_USER"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "OK_JOY_SHARED_PREFERENCES_KEY_CURRENT_USER"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    return-object p0

    :cond_17
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    return-object p0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserId()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_b
    const-string p0, ""

    :goto_d
    return-object p0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/okjoy/okjoysdk/user/OkJoyCurrentUserManager;->getUser(Landroid/content/Context;)Lcom/okjoy/okjoysdk/user/OkJoyUserModel;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/okjoy/okjoysdk/user/OkJoyUserModel;->getUserName()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_b
    const-string p0, ""

    :goto_d
    return-object p0
.end method

.method public static saveUser(Landroid/content/Context;Lcom/okjoy/okjoysdk/user/OkJoyUserModel;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4fdd\u5b58\u5f53\u524d\u7528\u6237\u4fe1\u606f\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokjoy/a/g;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    const-string v1, "OK_JOY_SHARE_PREFERENCES_FILE_CURRENT_USER"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "OK_JOY_SHARED_PREFERENCES_KEY_CURRENT_USER"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
