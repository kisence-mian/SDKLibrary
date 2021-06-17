.class public Lcom/umeng/commonsdk/statistics/internal/a;
.super Ljava/lang/Object;
.source "HeaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/internal/a$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/commonsdk/statistics/internal/a;->a:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/a;->b:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/a;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/internal/a$1;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/internal/a;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/internal/a;
    .registers 2

    .line 38
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/a;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 39
    if-eqz p0, :cond_c

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/commonsdk/statistics/internal/a;->a:Landroid/content/Context;

    .line 43
    :cond_c
    invoke-static {}, Lcom/umeng/commonsdk/statistics/internal/a$a;->a()Lcom/umeng/commonsdk/statistics/internal/a;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .registers 6

    .line 88
    const-string v0, " "

    const-string v1, "/"

    :try_start_4
    const-string v2, "&="

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "&&"

    .line 89
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "=="

    .line 90
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "Android"

    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 100
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 102
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/a;->a:Landroid/content/Context;

    .line 108
    invoke-static {v0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->getUmengMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/a;->b:Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_5f

    .line 116
    goto :goto_65

    .line 114
    :catchall_5f
    move-exception p1

    .line 115
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 118
    :goto_65
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 8

    .line 122
    const-string v0, "="

    :try_start_2
    const-string v1, "&&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4b

    .line 124
    const-string v2, "&="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 125
    nop

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v3, "ut/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const/4 v3, 0x0

    :goto_23
    array-length v4, p1

    if-ge v3, v4, :cond_45

    .line 129
    aget-object v4, p1, v3

    .line 130
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_42

    .line 131
    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 133
    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 135
    :cond_3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 138
    :cond_45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/internal/a;->c:Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_2 .. :try_end_4b} :catchall_4c

    .line 142
    :cond_4b
    goto :goto_52

    .line 140
    :catchall_4c
    move-exception p1

    .line 141
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 144
    :goto_52
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 48
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 50
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/internal/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 56
    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 58
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    const-string v0, "z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 66
    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 76
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->f(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/internal/a;->e(Ljava/lang/String;)V

    .line 80
    return-void
.end method
