.class Lcom/ss/android/downloadlib/addownload/a/b;
.super Ljava/lang/Object;
.source "AdDownloadDialogSpHelper.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/android/downloadlib/addownload/b/a;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 42
    :try_start_5
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 43
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3d

    .line 45
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 47
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/ss/android/downloadlib/addownload/b/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/downloadlib/addownload/b/a;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_3c

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3e

    .line 54
    :cond_3c
    goto :goto_23

    .line 58
    :cond_3d
    goto :goto_42

    .line 56
    :catch_3e
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :goto_42
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ss/android/downloadlib/addownload/b/a;",
            ">;)V"
        }
    .end annotation

    .line 63
    if-nez p3, :cond_3

    .line 64
    return-void

    .line 66
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    :try_start_8
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/downloadlib/addownload/b/a;

    .line 69
    if-eqz v1, :cond_27

    .line 70
    iget-wide v2, v1, Lcom/ss/android/downloadlib/addownload/b/a;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_29

    .line 72
    :cond_27
    goto :goto_c

    .line 75
    :cond_28
    goto :goto_2d

    .line 73
    :catch_29
    move-exception p3

    .line 74
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    :goto_2d
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p3

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 78
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_24

    .line 85
    :cond_d
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return-void

    .line 83
    :cond_24
    :goto_24
    return-void
.end method
