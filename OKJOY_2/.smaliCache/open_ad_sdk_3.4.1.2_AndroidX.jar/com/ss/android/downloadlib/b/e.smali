.class public Lcom/ss/android/downloadlib/b/e;
.super Ljava/lang/Object;
.source "AppLinkMonitor.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/b/e$a;
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/b/e;->a:J

    .line 29
    invoke-static {}, Lcom/ss/android/socialbase/downloader/a/a;->a()Lcom/ss/android/socialbase/downloader/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/a/a;->a(Lcom/ss/android/socialbase/downloader/a/a$a;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/b/e$1;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/ss/android/downloadlib/b/e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/downloadlib/b/e;)J
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/ss/android/downloadlib/b/e;->a:J

    return-wide v0
.end method

.method public static a()Lcom/ss/android/downloadlib/b/e;
    .registers 1

    .line 23
    invoke-static {}, Lcom/ss/android/downloadlib/b/e$a;->a()Lcom/ss/android/downloadlib/b/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;)V
    .registers 5

    .line 74
    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/android/downloadlib/b/e;->a(Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;J)V

    .line 75
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;J)V
    .registers 7

    .line 82
    if-nez p2, :cond_3

    .line 83
    return-void

    .line 86
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/k;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "check_applink_result_delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    if-lez v0, :cond_12

    .line 88
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long p3, v0

    .line 90
    :cond_12
    invoke-static {}, Lcom/ss/android/downloadlib/d;->a()Lcom/ss/android/downloadlib/d;

    move-result-object v0

    new-instance v1, Lcom/ss/android/downloadlib/b/e$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/downloadlib/b/e$2;-><init>(Lcom/ss/android/downloadlib/b/e;Ljava/lang/String;Lcom/ss/android/downloadlib/b/d;)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/ss/android/downloadlib/d;->a(Ljava/lang/Runnable;J)V

    .line 101
    return-void
.end method

.method public b()V
    .registers 3

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadlib/b/e;->a:J

    .line 37
    return-void
.end method

.method public c()V
    .registers 1

    .line 43
    return-void
.end method
