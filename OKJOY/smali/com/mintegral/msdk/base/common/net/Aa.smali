.class public Lcom/mintegral/msdk/base/common/net/Aa;
.super Ljava/lang/Object;
.source "Aa.java"


# static fields
.field private static final C_END:Ljava/lang/String; = "_mv_end"

.field private static final C_START:Ljava/lang/String; = "mv_channel_"

.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/net/Aa;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/mintegral/msdk/base/common/net/Aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 71
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->a()Lcom/mintegral/msdk/base/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mintegral/msdk/base/controller/b;->d()Lcom/mintegral/msdk/MIntegralUser;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_19

    .line 74
    invoke-static {v1}, Lcom/mintegral/msdk/MIntegralUser;->toJSON(Lcom/mintegral/msdk/MIntegralUser;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 76
    invoke-static {v1}, Lcom/mintegral/msdk/base/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 83
    :cond_19
    :goto_19
    return-object v0

    .line 81
    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_19
.end method

.method private static b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 25
    :try_start_7
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/a;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_2e

    move-result-object v0

    .line 30
    :goto_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "mv_channel_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "_mv_end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v0}, Lcom/mintegral/msdk/base/common/net/Aa;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 31
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/net/Aa;->a:Ljava/lang/String;

    .line 41
    :cond_2d
    :goto_2d
    return-void

    .line 27
    :catch_2e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 33
    :cond_33
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 34
    invoke-static {}, Lcom/mintegral/msdk/base/common/net/Aa;->g()V

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please don\'t update this value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_42
    const-string v0, ""

    sput-object v0, Lcom/mintegral/msdk/base/common/net/Aa;->a:Ljava/lang/String;

    goto :goto_2d
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 44
    .line 45
    if-eqz p0, :cond_27

    .line 46
    const-string v1, "mv_channel_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 47
    const-string v2, "_mv_end"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 48
    if-eq v1, v3, :cond_27

    if-eq v2, v3, :cond_27

    if-le v2, v1, :cond_27

    .line 49
    add-int/lit8 v1, v1, 0xb

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 51
    :try_start_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_28

    move-result-object v1

    .line 52
    :try_start_20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_2d

    move-result v2

    if-lez v2, :cond_27

    move-object v0, v1

    .line 62
    :cond_27
    :goto_27
    return-object v0

    .line 58
    :catch_28
    move-exception v1

    :goto_29
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_27

    :catch_2d
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_29
.end method

.method private static g()V
    .registers 4

    .prologue
    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mintegral/msdk/base/common/net/Aa$1;

    invoke-direct {v1}, Lcom/mintegral/msdk/base/common/net/Aa$1;-><init>()V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method
