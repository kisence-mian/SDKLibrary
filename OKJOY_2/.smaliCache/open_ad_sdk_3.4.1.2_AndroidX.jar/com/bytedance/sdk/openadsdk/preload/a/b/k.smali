.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/k;
.super Ljava/lang/Object;
.source "Primitives.java"


# direct methods
.method public static a(Ljava/lang/reflect/Type;)Z
    .registers 2

    .line 34
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_e

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
