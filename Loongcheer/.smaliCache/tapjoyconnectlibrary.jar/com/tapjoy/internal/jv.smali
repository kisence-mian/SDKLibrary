.class public final Lcom/tapjoy/internal/jv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/tapjoy/internal/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/jy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Lcom/tapjoy/internal/jv$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/jv$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/jv;->a:Lcom/tapjoy/internal/jy;

    .line 87
    new-instance v0, Lcom/tapjoy/internal/jv$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/jv$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/jv;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 890
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
