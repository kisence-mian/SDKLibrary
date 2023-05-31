.class public final Lcom/iab/omid/library/mintegral/d/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "OMIDLIB"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method
