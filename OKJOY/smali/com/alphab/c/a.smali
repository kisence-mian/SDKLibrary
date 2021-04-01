.class public final Lcom/alphab/c/a;
.super Ljava/lang/Object;
.source "AlphabReportTool.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "AlphabReportTool"

    sput-object v0, Lcom/alphab/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/alphab/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/alphab/c/b;)V
    .registers 6

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/alphab/c/b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/alphab/c/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reportDLAPK==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mintegral/msdk/base/utils/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    if-eqz p0, :cond_36

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_42

    move-result v1

    if-nez v1, :cond_36

    .line 1037
    :try_start_20
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 1038
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 1039
    invoke-static {v0, p0}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 1040
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/alphab/c/a$1;

    invoke-direct {v3}, Lcom/alphab/c/a$1;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_36} :catch_37

    .line 1053
    :cond_36
    :goto_36
    return-void

    .line 1051
    :catch_37
    move-exception v0

    .line 1052
    :try_start_38
    sget-object v1, Lcom/alphab/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_41} :catch_42

    goto :goto_36

    .line 25
    :catch_42
    move-exception v0

    .line 26
    sget-object v1, Lcom/alphab/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36
.end method
