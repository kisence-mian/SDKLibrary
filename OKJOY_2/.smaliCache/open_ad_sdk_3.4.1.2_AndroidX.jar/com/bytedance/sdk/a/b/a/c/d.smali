.class public final Lcom/bytedance/sdk/a/b/a/c/d;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 39
    new-instance v0, Lcom/bytedance/sdk/a/b/a/c/d$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/c/d$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->a:Ljava/lang/ThreadLocal;

    .line 54
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const-string v3, "EEE MMM d HH:mm:ss yyyy"

    const-string v4, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const-string v6, "EEE, dd MMM yy HH:mm:ss z"

    const-string v7, "EEE dd-MMM-yyyy HH:mm:ss z"

    const-string v8, "EEE dd MMM yyyy HH:mm:ss z"

    const-string v9, "EEE dd-MMM-yyyy HH-mm-ss z"

    const-string v10, "EEE dd-MMM-yy HH:mm:ss z"

    const-string v11, "EEE dd MMM yy HH:mm:ss z"

    const-string v12, "EEE,dd-MMM-yy HH:mm:ss z"

    const-string v13, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const-string v14, "EEE, dd-MM-yyyy HH:mm:ss z"

    const-string v15, "EEE MMM d yyyy HH:mm:ss z"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    .line 76
    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->c:[Ljava/text/DateFormat;

    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    .line 123
    sget-object v0, Lcom/bytedance/sdk/a/b/a/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .registers 11

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 84
    return-object v1

    .line 87
    :cond_8
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 88
    sget-object v3, Lcom/bytedance/sdk/a/b/a/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormat;

    invoke-virtual {v3, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 89
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_25

    .line 92
    return-object v3

    .line 94
    :cond_25
    sget-object v3, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    monitor-enter v3

    .line 95
    :try_start_28
    array-length v4, v3

    move v5, v2

    :goto_2a
    if-ge v5, v4, :cond_56

    .line 96
    sget-object v6, Lcom/bytedance/sdk/a/b/a/c/d;->c:[Ljava/text/DateFormat;

    aget-object v7, v6, v5

    .line 97
    if-nez v7, :cond_44

    .line 98
    new-instance v7, Ljava/text/SimpleDateFormat;

    sget-object v8, Lcom/bytedance/sdk/a/b/a/c/d;->b:[Ljava/lang/String;

    aget-object v8, v8, v5

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 101
    sget-object v8, Lcom/bytedance/sdk/a/b/a/c;->g:Ljava/util/TimeZone;

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    aput-object v7, v6, v5

    .line 104
    :cond_44
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 105
    invoke-virtual {v7, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    .line 106
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-eqz v7, :cond_53

    .line 112
    monitor-exit v3

    return-object v6

    .line 95
    :cond_53
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 115
    :cond_56
    monitor-exit v3

    .line 116
    return-object v1

    .line 115
    :catchall_58
    move-exception p0

    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_28 .. :try_end_5a} :catchall_58

    throw p0
.end method
