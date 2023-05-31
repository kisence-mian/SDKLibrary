.class Lcom/ss/android/downloadlib/e/a$a;
.super Ljava/lang/Object;
.source "AntiHijackUtils.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadlib/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/ss/android/downloadlib/e/a$a;->a:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/ss/android/downloadlib/e/a$1;)V
    .registers 3

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/e/a$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 168
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 170
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_35

    .line 171
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    move-object v1, v0

    .line 172
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 173
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_a8

    move-result-object v2

    .line 174
    :try_start_17
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_ab

    move-result-object v1

    :goto_1b
    move-object v4, v1

    .line 188
    :goto_1c
    :try_start_1c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 189
    :goto_22
    array-length v6, v4

    if-ge v1, v6, :cond_86

    .line 190
    aget-object v6, v4, v1
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_83

    .line 191
    if-nez v6, :cond_55

    .line 189
    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 176
    :cond_2c
    :try_start_2c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_1b

    .line 178
    :cond_35
    instance-of v1, p1, Ljava/lang/reflect/UndeclaredThrowableException;

    if-eqz v1, :cond_ae

    .line 179
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/UndeclaredThrowableException;

    move-object v1, v0

    .line 180
    invoke-virtual {v1}, Ljava/lang/reflect/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 181
    invoke-virtual {v1}, Ljava/lang/reflect/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_46} :catch_a8

    move-result-object v2

    .line 182
    :try_start_47
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_ab

    move-result-object v1

    move-object v4, v1

    goto :goto_1c

    .line 184
    :cond_4d
    :try_start_4d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_52} :catch_a8

    move-object v4, v2

    move-object v2, v1

    goto :goto_1c

    .line 194
    :cond_55
    :try_start_55
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7f

    .line 196
    const-string v8, "com.ss.android.downloadlib"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_29

    const-class v8, Ljava/lang/reflect/Proxy;

    .line 197
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_29

    const-class v8, Ljava/lang/reflect/Method;

    .line 198
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 202
    :cond_7f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 213
    :catch_83
    move-exception v1

    move-object v1, v2

    .line 214
    :goto_85
    return-object v1

    .line 204
    :cond_86
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8e

    move-object v1, v2

    .line 205
    goto :goto_85

    .line 207
    :cond_8e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/StackTraceElement;

    .line 208
    :goto_94
    array-length v1, v4

    if-ge v3, v1, :cond_a3

    .line 209
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StackTraceElement;

    aput-object v1, v4, v3

    .line 208
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_94

    .line 211
    :cond_a3
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_a6} :catch_83

    move-object v1, v2

    .line 212
    goto :goto_85

    .line 213
    :catch_a8
    move-exception v1

    move-object v1, p1

    goto :goto_85

    :catch_ab
    move-exception v1

    move-object v1, v2

    goto :goto_85

    :cond_ae
    move-object v4, v2

    move-object v2, p1

    goto/16 :goto_1c
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    :try_start_2
    const-string v0, "startActivity"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 118
    const/4 v0, 0x1

    aget-object v0, p3, v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_56

    const/4 v0, 0x2

    aget-object v0, p3, v0

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_56

    .line 119
    const/4 v0, 0x2

    aget-object v0, p3, v0

    check-cast v0, Landroid/content/Intent;

    .line 120
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v3, "application/vnd.android.package-archive"

    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 122
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->c()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 123
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "hook_vivo_arg"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 125
    const/4 v1, 0x1

    aput-object v0, p3, v1
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_56} :catch_c0

    .line 157
    :cond_56
    :goto_56
    :try_start_56
    iget-object v0, p0, Lcom/ss/android/downloadlib/e/a$a;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5b} :catch_f4

    move-result-object v0

    return-object v0

    .line 127
    :cond_5d
    :try_start_5d
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->d()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 128
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "hook_oppo_arg1"

    const-string v5, "com.android.settings"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 130
    const/4 v4, 0x1

    aput-object v3, p3, v4

    .line 132
    :cond_7a
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "hook_oppo_arg2"

    const-string v5, "com.android.browser"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "hook_oppo_arg3"

    const-string v6, "m.store.oppomobile.com"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    const-string v5, "oppo_extra_pkg_name"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v5, "refererHost"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "hook_oppo_arg4"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_c2

    .line 137
    :goto_a9
    if-eqz v1, :cond_56

    .line 138
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    const-string v2, "oppo_extra_pkg_name"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v2, "refererHost"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_56

    .line 153
    :catch_c0
    move-exception v0

    goto :goto_56

    :cond_c2
    move v1, v2

    .line 136
    goto :goto_a9

    .line 143
    :cond_c4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/m/i;->a()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 144
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hook_huawei_arg1"

    const-string v3, "com.android.settings"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    .line 146
    const/4 v2, 0x1

    aput-object v1, p3, v2

    .line 148
    :cond_e1
    const-string v1, "caller_package"

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->i()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "hook_huawei_arg2"

    const-string v4, "com.huawei.appmarket"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_f2} :catch_c0

    goto/16 :goto_56

    .line 158
    :catch_f4
    move-exception v0

    .line 159
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/e/a$a;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
