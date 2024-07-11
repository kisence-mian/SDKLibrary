.class public Lcom/ss/android/downloadlib/a/a/c;
.super Ljava/lang/Object;
.source "HwMarketDialogUtils.java"


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/a/e;
    .registers 5

    .line 71
    const-string v0, "ar"

    invoke-static {p0, v0, p1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "as"

    invoke-static {p0, v1, p1}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x2

    const v2, 0x5fa74e0

    if-eqz p1, :cond_28

    .line 74
    new-instance p0, Lcom/ss/android/downloadlib/a/a/e;

    invoke-direct {p0}, Lcom/ss/android/downloadlib/a/a/e;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/e;->b:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/ss/android/downloadlib/a/a/e;->c:Ljava/lang/String;

    .line 77
    iput v2, p0, Lcom/ss/android/downloadlib/a/a/e;->d:I

    .line 78
    iput v1, p0, Lcom/ss/android/downloadlib/a/a/e;->a:I

    .line 79
    return-object p0

    .line 80
    :cond_28
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 81
    new-instance p1, Lcom/ss/android/downloadlib/a/a/e;

    invoke-direct {p1}, Lcom/ss/android/downloadlib/a/a/e;-><init>()V

    .line 82
    iput-object p0, p1, Lcom/ss/android/downloadlib/a/a/e;->b:Ljava/lang/String;

    .line 83
    iput-object p0, p1, Lcom/ss/android/downloadlib/a/a/e;->c:Ljava/lang/String;

    .line 84
    iput v2, p1, Lcom/ss/android/downloadlib/a/a/e;->d:I

    .line 85
    iput v1, p1, Lcom/ss/android/downloadlib/a/a/e;->a:I

    .line 86
    return-object p1

    .line 88
    :cond_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/a/f;
    .registers 6

    .line 92
    const-string v0, "ar"

    invoke-static {p1, v0, p2}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "as"

    invoke-static {p1, v1, p2}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 95
    const-string v0, "at"

    invoke-static {p1, v0, p2}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/ss/android/downloadlib/a/a/f;

    invoke-direct {p2}, Lcom/ss/android/downloadlib/a/a/f;-><init>()V

    .line 97
    iput-object p0, p2, Lcom/ss/android/downloadlib/a/a/f;->a:Ljava/lang/String;

    .line 98
    iput-object p1, p2, Lcom/ss/android/downloadlib/a/a/f;->b:Ljava/lang/String;

    .line 99
    iput v2, p2, Lcom/ss/android/downloadlib/a/a/f;->d:I

    .line 100
    const/4 p0, 0x2

    iput p0, p2, Lcom/ss/android/downloadlib/a/a/f;->e:I

    .line 101
    iput-object p1, p2, Lcom/ss/android/downloadlib/a/a/f;->c:Ljava/lang/String;

    .line 102
    return-object p2

    .line 103
    :cond_2e
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 104
    const-string v0, "au"

    invoke-static {p1, v0, p2}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance p2, Lcom/ss/android/downloadlib/a/a/f;

    invoke-direct {p2}, Lcom/ss/android/downloadlib/a/a/f;-><init>()V

    .line 106
    iput-object p0, p2, Lcom/ss/android/downloadlib/a/a/f;->a:Ljava/lang/String;

    .line 107
    iput-object p1, p2, Lcom/ss/android/downloadlib/a/a/f;->b:Ljava/lang/String;

    .line 108
    iput v2, p2, Lcom/ss/android/downloadlib/a/a/f;->d:I

    .line 109
    iput v2, p2, Lcom/ss/android/downloadlib/a/a/f;->e:I

    .line 110
    iput-object p1, p2, Lcom/ss/android/downloadlib/a/a/f;->c:Ljava/lang/String;

    .line 111
    return-object p2

    .line 113
    :cond_4e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 10

    .line 31
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/ss/android/downloadlib/a/a/b;->a()V

    .line 33
    const-string v1, "ap"

    invoke-static {p3, v1, p4}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 36
    new-instance v1, Lcom/ss/android/downloadlib/a/a/d;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v3, p2}, Lcom/ss/android/downloadlib/a/a/d;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 37
    invoke-static {}, Lcom/ss/android/socialbase/appdownloader/f/c;->i()Ljava/lang/String;

    move-result-object p2

    .line 38
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/ss/android/downloadlib/h/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 39
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    :cond_2f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v3, Lcom/ss/android/downloadlib/a/a/g;

    invoke-direct {v3}, Lcom/ss/android/downloadlib/a/a/g;-><init>()V

    .line 44
    invoke-static {p3, p4}, Lcom/ss/android/downloadlib/a/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/a/e;

    move-result-object v4

    .line 45
    invoke-static {p1, p3, p4}, Lcom/ss/android/downloadlib/a/a/c;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ss/android/downloadlib/a/a/f;

    move-result-object p1

    .line 46
    if-eqz v4, :cond_74

    if-nez p1, :cond_46

    goto :goto_74

    .line 49
    :cond_46
    iput-object v4, v3, Lcom/ss/android/downloadlib/a/a/g;->b:Lcom/ss/android/downloadlib/a/a/e;

    .line 50
    const-string v4, "aq"

    invoke-static {p3, v4, p4}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ss/android/downloadlib/a/a/g;->a:Ljava/lang/String;

    .line 51
    iput-object p1, v3, Lcom/ss/android/downloadlib/a/a/g;->c:Lcom/ss/android/downloadlib/a/a/a;

    .line 53
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-string p1, "av"

    invoke-static {p3, p1, p4}, Lcom/ss/android/socialbase/appdownloader/f/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 56
    const p1, 0x10008000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    const-string p1, "start_only_for_android"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    invoke-static {p0, v1}, Lcom/ss/android/downloadlib/h/k;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 60
    return v0

    .line 62
    :cond_70
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_75

    .line 63
    return v2

    .line 47
    :cond_74
    :goto_74
    return v0

    .line 64
    :catchall_75
    move-exception p0

    .line 66
    return v0
.end method
