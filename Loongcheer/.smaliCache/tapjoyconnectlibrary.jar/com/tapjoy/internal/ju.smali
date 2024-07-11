.class public final Lcom/tapjoy/internal/ju;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/tapjoy/internal/jp;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 344
    nop

    .line 1068
    new-instance v0, Lcom/tapjoy/internal/jp;

    const-string v1, ", "

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/jp;-><init>(Ljava/lang/String;)V

    .line 344
    sput-object v0, Lcom/tapjoy/internal/ju;->a:Lcom/tapjoy/internal/jp;

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 341
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
