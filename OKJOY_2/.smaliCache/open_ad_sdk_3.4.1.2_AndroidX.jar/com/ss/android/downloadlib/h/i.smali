.class public Lcom/ss/android/downloadlib/h/i;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/h/i$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/h/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/h/i;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    return-void

    .line 33
    :cond_7
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/i;->c(Ljava/lang/String;)Lcom/ss/android/downloadlib/h/i$a;

    move-result-object p0

    .line 34
    if-nez p0, :cond_e

    .line 35
    return-void

    .line 38
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/downloadlib/h/i$a;->a()V

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/ss/android/downloadlib/h/i$a;)V
    .registers 3

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    .line 57
    :cond_9
    sget-object v0, Lcom/ss/android/downloadlib/h/i;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void

    .line 55
    :cond_f
    :goto_f
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    return-void

    .line 46
    :cond_7
    invoke-static {p0}, Lcom/ss/android/downloadlib/h/i;->c(Ljava/lang/String;)Lcom/ss/android/downloadlib/h/i$a;

    move-result-object p0

    .line 47
    if-nez p0, :cond_e

    .line 48
    return-void

    .line 50
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/downloadlib/h/i$a;->a(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/ss/android/downloadlib/h/i$a;)V
    .registers 4

    .line 20
    if-eqz p0, :cond_15

    array-length v0, p0

    if-gtz v0, :cond_6

    goto :goto_15

    .line 23
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/h/i;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/h/i$a;)V

    .line 25
    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    return-void

    .line 21
    :cond_15
    :goto_15
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    .line 75
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->f()Lcom/ss/android/a/a/a/h;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ss/android/a/a/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Lcom/ss/android/downloadlib/h/i$a;
    .registers 2

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_8
    sget-object v0, Lcom/ss/android/downloadlib/h/i;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/downloadlib/h/i$a;

    return-object p0
.end method
