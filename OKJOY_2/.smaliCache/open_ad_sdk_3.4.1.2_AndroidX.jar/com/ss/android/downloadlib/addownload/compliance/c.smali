.class public Lcom/ss/android/downloadlib/addownload/compliance/c;
.super Lcom/ss/android/socialbase/downloader/i/g;
.source "AppInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/addownload/compliance/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ss/android/socialbase/downloader/i/g<",
        "Ljava/lang/Long;",
        "Lcom/ss/android/downloadlib/addownload/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 20
    const/16 v0, 0x10

    invoke-direct {p0, v0, v0}, Lcom/ss/android/socialbase/downloader/i/g;-><init>(II)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadlib/addownload/compliance/c$1;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/ss/android/downloadlib/addownload/compliance/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/addownload/compliance/c;
    .registers 1

    .line 16
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/c$a;->a()Lcom/ss/android/downloadlib/addownload/compliance/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/ss/android/downloadlib/addownload/b/b;
    .registers 3

    .line 35
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/b/b;

    return-object p1
.end method

.method public a(JJ)Lcom/ss/android/downloadlib/addownload/b/b;
    .registers 6

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/downloadlib/addownload/compliance/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_13
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ss/android/downloadlib/addownload/b/b;

    return-object p1
.end method

.method public a(Lcom/ss/android/downloadlib/addownload/b/b;)V
    .registers 4

    .line 24
    if-nez p1, :cond_3

    .line 25
    return-void

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/ss/android/downloadlib/addownload/b/b;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/downloadlib/addownload/compliance/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-void
.end method
