.class public final Lcom/mintegral/msdk/f/l;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 6
    if-nez p0, :cond_8

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9
    :cond_8
    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 21
    if-nez p0, :cond_8

    .line 22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_8
    return-object p0
.end method

.method static a(ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 34
    if-nez p0, :cond_8

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_8
    return-void
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 13
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_11

    aget-object v1, p0, v0

    .line 14
    if-nez v1, :cond_e

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_11
    return-void
.end method
