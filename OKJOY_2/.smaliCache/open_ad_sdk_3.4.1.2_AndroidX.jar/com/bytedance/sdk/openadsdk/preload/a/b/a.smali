.class public final Lcom/bytedance/sdk/openadsdk/preload/a/b/a;
.super Ljava/lang/Object;
.source "$Gson$Preconditions.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 38
    if-eqz p0, :cond_3

    .line 41
    return-object p0

    .line 39
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static a(Z)V
    .registers 1

    .line 45
    if-eqz p0, :cond_3

    .line 48
    return-void

    .line 46
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
