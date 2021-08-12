.class public final Lcom/tencent/bugly/proguard/x;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Z

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-string v0, "CrashReportInfo"

    sput-object v0, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    .line 15
    const-string v0, "CrashReport"

    sput-object v0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/x;->b:Z

    return-void
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Z
    .registers 5

    .line 38
    sget-boolean v0, Lcom/tencent/bugly/proguard/x;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 39
    return v1

    .line 41
    :cond_6
    if-nez p1, :cond_b

    const-string p1, "null"

    goto :goto_17

    :cond_b
    if-eqz p2, :cond_17

    array-length v0, p2

    if-nez v0, :cond_11

    goto :goto_17

    :cond_11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 43
    :cond_17
    :goto_17
    const/4 p2, 0x1

    packed-switch p0, :pswitch_data_3a

    .line 65
    :pswitch_1b
    return v1

    .line 48
    :pswitch_1c
    sget-object p0, Lcom/tencent/bugly/proguard/x;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return p2

    .line 59
    :pswitch_22
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return p2

    .line 55
    :pswitch_28
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return p2

    .line 52
    :pswitch_2e
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return p2

    .line 45
    :pswitch_34
    sget-object p0, Lcom/tencent/bugly/proguard/x;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return p2

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_1b
        :pswitch_1c
    .end packed-switch
.end method

.method public static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 6

    .line 81
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "[%s] %s"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-static {v2, p0, p2}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .line 77
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .registers 3

    .line 108
    sget-boolean v0, Lcom/tencent/bugly/proguard/x;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 6

    .line 94
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p1, "[%s] %s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .line 86
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .registers 3

    .line 121
    sget-boolean v0, Lcom/tencent/bugly/proguard/x;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .line 90
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .line 99
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 3

    .line 112
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/x;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
