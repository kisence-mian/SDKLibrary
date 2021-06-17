.class public final Lcom/tapjoy/internal/ej;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    .line 9
    if-eqz p0, :cond_3

    .line 12
    return-void

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
