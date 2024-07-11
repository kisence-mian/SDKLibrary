.class public Lcom/ss/android/socialbase/downloader/impls/q;
.super Ljava/lang/Object;
.source "RetryDelayTimeParamCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/q;


# instance fields
.field private final a:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/q;->a(Ljava/lang/String;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    .line 22
    return-void
.end method

.method private a(Ljava/lang/String;)[J
    .registers 7

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 41
    return-object v1

    .line 44
    :cond_8
    :try_start_8
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 45
    array-length v0, p1

    if-nez v0, :cond_12

    .line 46
    return-object v1

    .line 48
    :cond_12
    array-length v0, p1

    new-array v0, v0, [J

    .line 49
    const/4 v2, 0x0

    :goto_16
    array-length v3, p1

    if-ge v2, v3, :cond_24

    .line 50
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v0, v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 52
    :cond_24
    return-object v0

    .line 53
    :catchall_25
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    return-object v1
.end method


# virtual methods
.method public a(II)J
    .registers 4

    .line 26
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    if-eqz p2, :cond_17

    array-length v0, p2

    if-lez v0, :cond_17

    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    if-gez p1, :cond_c

    .line 29
    const/4 p1, 0x0

    .line 31
    :cond_c
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_14

    .line 32
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 34
    :cond_14
    aget-wide p1, p2, p1

    return-wide p1

    .line 36
    :cond_17
    const-wide/16 p1, 0x0

    return-wide p1
.end method
