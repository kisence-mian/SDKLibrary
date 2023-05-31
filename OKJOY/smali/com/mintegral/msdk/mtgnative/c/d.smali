.class public Lcom/mintegral/msdk/mtgnative/c/d;
.super Ljava/lang/Object;
.source "NativeVideoTrackingReport.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/mintegral/msdk/mtgnative/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgnative/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/mintegral/msdk/mtgnative/c/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 56
    if-eqz p0, :cond_88

    .line 57
    :try_start_2
    invoke-static {p0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/w;->a(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/w;

    move-result-object v0

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/b/w;->c()I

    move-result v1

    if-lez v1, :cond_88

    .line 60
    const-string v1, "2000022"

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 62
    const-string v2, "2000021"

    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 64
    const-string v3, "2000043"

    invoke-virtual {v0, v3}, Lcom/mintegral/msdk/base/b/w;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-static {v2}, Lcom/mintegral/msdk/base/entity/q;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1}, Lcom/mintegral/msdk/base/entity/q;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0}, Lcom/mintegral/msdk/base/entity/q;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_4d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    if-eqz p0, :cond_88

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6f} :catch_97

    move-result v1

    if-nez v1, :cond_88

    .line 1025
    :try_start_72
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 1026
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 1027
    invoke-static {v0, p0, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 1028
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/mtgnative/c/d$1;

    invoke-direct {v3}, Lcom/mintegral/msdk/mtgnative/c/d$1;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_88} :catch_89

    .line 1045
    :cond_88
    :goto_88
    return-void

    .line 1042
    :catch_89
    move-exception v0

    .line 1043
    :try_start_8a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1044
    sget-object v1, Lcom/mintegral/msdk/mtgnative/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_96} :catch_97

    goto :goto_88

    .line 86
    :catch_97
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method
