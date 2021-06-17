.class public Lcom/umeng/analytics/pro/ah;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final a:Ljava/lang/String; = "OpenId"

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/analytics/pro/ah;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    if-nez p0, :cond_8

    move-object p0, v1

    :cond_8
    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 p0, 0x1

    if-nez p1, :cond_f

    move-object p1, v1

    :cond_f
    aput-object p1, v0, p0

    const-string p0, "%s:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 15
    sget-boolean v0, Lcom/umeng/analytics/pro/ah;->b:Z

    if-eqz v0, :cond_d

    .line 16
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenId"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_d
    return-void
.end method

.method public static a(Z)V
    .registers 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenId"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sput-boolean p0, Lcom/umeng/analytics/pro/ah;->b:Z

    .line 12
    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 21
    sget-boolean v0, Lcom/umeng/analytics/pro/ah;->b:Z

    if-eqz v0, :cond_d

    .line 22
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenId"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_d
    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 28
    sget-boolean v0, Lcom/umeng/analytics/pro/ah;->b:Z

    if-eqz v0, :cond_d

    .line 29
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenId"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_d
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 34
    sget-boolean v0, Lcom/umeng/analytics/pro/ah;->b:Z

    if-eqz v0, :cond_d

    .line 35
    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenId"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_d
    return-void
.end method

.method private static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    .line 40
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 41
    const-string p0, ""

    return-object p0

    .line 44
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    if-nez p0, :cond_13

    const-string p0, "-"

    :cond_13
    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "[%s] "

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    if-eqz p1, :cond_48

    .line 47
    array-length p0, p1

    .line 49
    nop

    :goto_23
    add-int/lit8 v2, v3, 0x1

    array-length v4, p1

    if-ge v2, v4, :cond_3f

    .line 50
    aget-object v3, p1, v3

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/umeng/analytics/pro/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v3, p0, -0x1

    if-ge v2, v3, :cond_3c

    .line 53
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_3c
    add-int/lit8 v3, v2, 0x1

    goto :goto_23

    .line 56
    :cond_3f
    array-length p0, p1

    sub-int/2addr p0, v1

    if-ne v3, p0, :cond_48

    .line 57
    aget-object p0, p1, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
