.class public final Lcom/tds/common/reactor/internal/util/UtilityFunctions;
.super Ljava/lang/Object;
.source "UtilityFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;,
        Lcom/tds/common/reactor/internal/util/UtilityFunctions$AlwaysFalse;,
        Lcom/tds/common/reactor/internal/util/UtilityFunctions$AlwaysTrue;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static alwaysFalse()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$AlwaysFalse;->INSTANCE:Lcom/tds/common/reactor/internal/util/UtilityFunctions$AlwaysFalse;

    return-object v0
.end method

.method public static alwaysTrue()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$AlwaysTrue;->INSTANCE:Lcom/tds/common/reactor/internal/util/UtilityFunctions$AlwaysTrue;

    return-object v0
.end method

.method public static identity()Lcom/tds/common/reactor/functions/Func1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/tds/common/reactor/functions/Func1<",
            "TT;TT;>;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;->INSTANCE:Lcom/tds/common/reactor/internal/util/UtilityFunctions$Identity;

    return-object v0
.end method
