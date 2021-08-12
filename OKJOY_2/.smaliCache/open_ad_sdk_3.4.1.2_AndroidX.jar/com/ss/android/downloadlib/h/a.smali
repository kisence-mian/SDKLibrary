.class public Lcom/ss/android/downloadlib/h/a;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/h/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    const/4 p0, 0x5

    return p0

    .line 44
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ss/android/ttmd5/TTMd5;->checkMd5(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 31
    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ss/android/ttmd5/TTMd5;->ttmd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .registers 4

    .line 76
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hook"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 77
    return-void

    .line 79
    :cond_f
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/h/a$1;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/h/a$1;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 87
    return-void
.end method

.method public static a([Ljava/lang/Object;)V
    .registers 9

    .line 124
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hook"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 125
    return-void

    .line 127
    :cond_f
    aget-object v0, p0, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_134

    const/4 v0, 0x2

    aget-object v3, p0, v0

    instance-of v3, v3, Landroid/content/Intent;

    if-eqz v3, :cond_134

    .line 128
    aget-object v0, p0, v0

    check-cast v0, Landroid/content/Intent;

    .line 129
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    sget-object v3, Lcom/ss/android/socialbase/downloader/constants/e;->a:Ljava/lang/String;

    .line 130
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    .line 131
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->c()Z

    move-result v3

    const-string v4, "null"

    if-eqz v3, :cond_56

    .line 132
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "hook_vivo_arg"

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 134
    aput-object v0, p0, v1

    .line 136
    :cond_54
    goto/16 :goto_134

    :cond_56
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->d()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 137
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".market"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hook_kllk_arg1"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 139
    aput-object v3, p0, v1

    .line 141
    :cond_89
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "hook_kllk_arg2"

    const-string v4, "com.android.browser"

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m.store."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mobile.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "hook_kllk_arg3"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_extra_pkg_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v4, "refererHost"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "hook_kllk_arg4"

    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v1, :cond_e4

    move v2, v1

    .line 146
    :cond_e4
    if-eqz v2, :cond_134

    .line 147
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/ss/android/socialbase/downloader/constants/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string p0, "android.intent.extra.INTENT"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_134

    .line 152
    :cond_10a
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->a()Z

    move-result v2

    if-eqz v2, :cond_134

    .line 153
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "hook_huawei_arg1"

    const-string v5, "com.huawei.appmarket"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    .line 155
    aput-object v2, p0, v1

    .line 157
    :cond_124
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "hook_huawei_arg2"

    invoke-virtual {p0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "caller_package"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    nop

    .line 161
    :cond_134
    :goto_134
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 62
    return-object v1

    .line 65
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 66
    if-eqz p0, :cond_1a

    .line 67
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1b

    return-object p0

    .line 71
    :cond_1a
    goto :goto_1c

    .line 69
    :catch_1b
    move-exception p0

    .line 72
    :goto_1c
    return-object v1
.end method

.method static synthetic b()V
    .registers 0

    .line 27
    invoke-static {}, Lcom/ss/android/downloadlib/h/a;->c()V

    return-void
.end method

.method private static c()V
    .registers 7

    .line 93
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_13

    .line 94
    const-string v0, "android.app.ActivityManagerNative"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    const-string v1, "gDefault"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_1f

    .line 97
    :cond_13
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-string v1, "IActivityManagerSingleton"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 100
    :goto_1f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    const-string v3, "android.util.Singleton"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 103
    const-string v4, "mInstance"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    if-nez v4, :cond_3e

    .line 107
    return-void

    .line 110
    :cond_3e
    const-string v5, "android.app.IActivityManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 111
    if-nez v5, :cond_47

    .line 112
    return-void

    .line 114
    :cond_47
    new-instance v6, Lcom/ss/android/downloadlib/h/a$a;

    invoke-direct {v6, v4, v2}, Lcom/ss/android/downloadlib/h/a$a;-><init>(Ljava/lang/Object;Lcom/ss/android/downloadlib/h/a$1;)V

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v5, v1, v4

    invoke-static {v2, v1, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_0 .. :try_end_60} :catchall_61

    .line 120
    goto :goto_62

    .line 119
    :catchall_61
    move-exception v0

    .line 121
    :goto_62
    return-void
.end method
