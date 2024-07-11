.class public final Lcom/tapjoy/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 84
    new-instance v0, Lcom/tapjoy/internal/v$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/v$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/v;->a:Ljava/lang/ThreadLocal;

    .line 100
    new-instance v0, Lcom/tapjoy/internal/v$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/v$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/v;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 2

    .line 97
    sget-object v0, Lcom/tapjoy/internal/v;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
