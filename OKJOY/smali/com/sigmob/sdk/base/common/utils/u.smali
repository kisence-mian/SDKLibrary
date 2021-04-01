.class public final Lcom/sigmob/sdk/base/common/utils/u;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_4
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/util/IllegalFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sigmob preconditions had a format exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 6

    const/4 v4, 0x1

    const-string v0, "Object can not be null."

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p0, v4, v0, v1}, Lcom/sigmob/sdk/base/common/utils/u;->b(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/utils/u;->b(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/sigmob/sdk/base/common/utils/u;->b(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(ZZLjava/lang/String;[Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/sigmob/sdk/base/common/utils/u;->b(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static varargs b(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z
    .registers 6

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-nez p2, :cond_a

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/v;->a()Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-static {p2, p3}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_16

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static varargs b(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .registers 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    if-nez p1, :cond_16

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/v;->a()Ljava/lang/String;

    move-result-object p1

    :cond_16
    invoke-static {p1, p2}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_22

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static varargs b(ZZLjava/lang/String;[Ljava/lang/Object;)Z
    .registers 6

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-nez p2, :cond_a

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/v;->a()Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-static {p2, p3}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static varargs c(ZZLjava/lang/String;[Ljava/lang/Object;)Z
    .registers 6

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-nez p2, :cond_a

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/v;->a()Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-static {p2, p3}, Lcom/sigmob/sdk/base/common/utils/u;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_16

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    invoke-static {v0}, Lcom/sigmob/sdk/base/common/logging/SigmobLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3
.end method
