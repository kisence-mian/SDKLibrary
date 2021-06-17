.class public Lcom/umeng/analytics/pro/av;
.super Ljava/lang/Object;
.source "TEnumHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;I)Lcom/umeng/analytics/pro/au;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/au;",
            ">;I)",
            "Lcom/umeng/analytics/pro/au;"
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "findByValue"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 45
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/analytics/pro/au;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1d} :catch_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1d} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1d} :catch_1e

    return-object p0

    .line 50
    :catch_1e
    move-exception p0

    .line 51
    return-object v0

    .line 48
    :catch_20
    move-exception p0

    .line 49
    return-object v0

    .line 46
    :catch_22
    move-exception p0

    .line 47
    return-object v0
.end method
