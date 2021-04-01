.class public Lcom/ss/android/socialbase/downloader/impls/q;
.super Ljava/lang/Object;
.source "RetryDelayTimeParamCalculator.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/r;


# instance fields
.field private final a:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/q;->a(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    .line 22
    return-void
.end method

.method private a(Ljava/lang/String;)[J
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 56
    :cond_7
    :goto_7
    return-object v0

    .line 44
    :cond_8
    :try_start_8
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 45
    array-length v1, v3

    if-eqz v1, :cond_7

    .line 48
    array-length v1, v3

    new-array v1, v1, [J

    .line 49
    const/4 v2, 0x0

    :goto_15
    array-length v4, v3

    if-ge v2, v4, :cond_23

    .line 50
    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_20} :catch_25

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_23
    move-object v0, v1

    .line 52
    goto :goto_7

    .line 53
    :catch_25
    move-exception v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method public a(II)J
    .registers 5

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 27
    add-int/lit8 v0, p1, -0x1

    .line 28
    if-gez v0, :cond_e

    .line 29
    const/4 v0, 0x0

    .line 31
    :cond_e
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1a

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 34
    :cond_1a
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/q;->a:[J

    aget-wide v0, v1, v0

    .line 36
    :goto_1e
    return-wide v0

    :cond_1f
    const-wide/16 v0, 0x0

    goto :goto_1e
.end method
