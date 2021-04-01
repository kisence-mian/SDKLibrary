.class public Lcom/ss/android/downloadlib/e/e;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/e/e$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/e/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ss/android/downloadlib/e/e;->a:Ljava/util/Map;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    :cond_6
    :goto_6
    return-void

    .line 33
    :cond_7
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/e;->c(Ljava/lang/String;)Lcom/ss/android/downloadlib/e/e$a;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_6

    .line 38
    invoke-interface {v0}, Lcom/ss/android/downloadlib/e/e$a;->a()V

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Lcom/ss/android/downloadlib/e/e$a;)V
    .registers 3

    .prologue
    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_9

    .line 58
    :cond_8
    :goto_8
    return-void

    .line 57
    :cond_9
    sget-object v0, Lcom/ss/android/downloadlib/e/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    :cond_6
    :goto_6
    return-void

    .line 46
    :cond_7
    invoke-static {p0}, Lcom/ss/android/downloadlib/e/e;->c(Ljava/lang/String;)Lcom/ss/android/downloadlib/e/e$a;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_6

    .line 50
    invoke-interface {v0, p1}, Lcom/ss/android/downloadlib/e/e$a;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a([Ljava/lang/String;Lcom/ss/android/downloadlib/e/e$a;)V
    .registers 4

    .prologue
    .line 20
    if-eqz p0, :cond_5

    array-length v0, p0

    if-gtz v0, :cond_6

    .line 26
    :cond_5
    :goto_5
    return-void

    .line 23
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0, p1}, Lcom/ss/android/downloadlib/e/e;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/e/e$a;)V

    .line 25
    invoke-static {v0, p0}, Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->a(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->f()Lcom/ss/android/a/a/a/g;

    move-result-object v0

    invoke-static {}, Lcom/ss/android/downloadlib/a/j;->a()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ss/android/a/a/a/g;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Lcom/ss/android/downloadlib/e/e$a;
    .registers 2

    .prologue
    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    const/4 v0, 0x0

    .line 65
    :goto_7
    return-object v0

    :cond_8
    sget-object v0, Lcom/ss/android/downloadlib/e/e;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/e/e$a;

    goto :goto_7
.end method
