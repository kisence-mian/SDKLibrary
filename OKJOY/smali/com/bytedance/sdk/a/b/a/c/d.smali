.class public final Lcom/bytedance/sdk/a/b/a/c/d;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/d$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/c/d$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->a:Ljava/lang/ThreadLocal;

    .line 54
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->c:[Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v1

    .line 116
    :cond_9
    :goto_9
    return-object v0

    .line 87
    :cond_a
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 88
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 89
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_9

    .line 94
    sget-object v4, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    monitor-enter v4

    .line 95
    :try_start_28
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    array-length v5, v0

    :goto_2b
    if-ge v2, v5, :cond_5e

    .line 96
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->c:[Ljava/text/DateFormat;

    aget-object v0, v0, v2

    .line 97
    if-nez v0, :cond_47

    .line 98
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v6, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    aget-object v6, v6, v2

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 101
    sget-object v6, Lcom/bytedance/sdk/a/b/a/c;->g:Ljava/util/TimeZone;

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    sget-object v6, Lcom/bytedance/sdk/a/b/a/c/d;->c:[Ljava/text/DateFormat;

    aput-object v0, v6, v2

    .line 104
    :cond_47
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 105
    invoke-virtual {v0, p0, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 106
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    if-eqz v6, :cond_5a

    .line 112
    monitor-exit v4

    goto :goto_9

    .line 115
    :catchall_57
    move-exception v0

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_28 .. :try_end_59} :catchall_57

    throw v0

    .line 95
    :cond_5a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2b

    .line 115
    :cond_5e
    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_57

    move-object v0, v1

    .line 116
    goto :goto_9
.end method
