.class public final Lcom/tapjoy/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/tapjoy/internal/aw;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tapjoy/internal/aw<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 28
    const/4 v0, 0x1

    .line 30
    :goto_1
    :try_start_1
    invoke-interface {p0}, Lcom/tapjoy/internal/aw;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    .line 31
    :catch_6
    move-exception v1

    .line 32
    const/16 v2, 0xa

    if-ge v0, v2, :cond_11

    .line 1055
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_11
    goto :goto_13

    :goto_12
    throw v1

    :goto_13
    goto :goto_12
.end method
