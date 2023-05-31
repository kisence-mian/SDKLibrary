.class public Lcom/mintegral/msdk/mtgbid/common/c/a;
.super Ljava/lang/Object;
.source "BidReport.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/mintegral/msdk/mtgbid/common/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/mtgbid/common/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/mintegral/msdk/mtgbid/common/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 34
    if-eqz p0, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 36
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v1, "key=2000064&result=1&network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&bidid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 45
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/mtgbid/common/c/a$1;

    invoke-direct {v3}, Lcom/mintegral/msdk/mtgbid/common/c/a$1;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3e} :catch_3f

    .line 63
    :cond_3e
    :goto_3e
    return-void

    .line 58
    :catch_3f
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    sget-object v1, Lcom/mintegral/msdk/mtgbid/common/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 73
    if-eqz p0, :cond_3e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 75
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v1, "key=2000064&result=2&network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v1, Lcom/mintegral/msdk/base/common/e/d/a;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/common/e/d/a;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v1}, Lcom/mintegral/msdk/base/common/e/d/a;->c()V

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/mintegral/msdk/base/common/e/c;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Lcom/mintegral/msdk/base/common/net/l;

    move-result-object v0

    .line 84
    sget-object v2, Lcom/mintegral/msdk/base/common/a;->f:Ljava/lang/String;

    new-instance v3, Lcom/mintegral/msdk/mtgbid/common/c/a$2;

    invoke-direct {v3}, Lcom/mintegral/msdk/mtgbid/common/c/a$2;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/mintegral/msdk/base/common/e/d/a;->b(Ljava/lang/String;Lcom/mintegral/msdk/base/common/net/l;Lcom/mintegral/msdk/base/common/net/d;)Lcom/mintegral/msdk/base/common/f/a;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3e} :catch_3f

    .line 102
    :cond_3e
    :goto_3e
    return-void

    .line 97
    :catch_3f
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    sget-object v1, Lcom/mintegral/msdk/mtgbid/common/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method
