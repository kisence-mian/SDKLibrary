.class public final Lcom/tapjoy/internal/ef;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/ef;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    sput v0, Lcom/tapjoy/internal/ef;->a:I

    const/4 v1, 0x2

    sput v1, Lcom/tapjoy/internal/ef;->b:I

    const/4 v2, 0x3

    sput v2, Lcom/tapjoy/internal/ef;->c:I

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v0

    aput v2, v3, v1

    sput-object v3, Lcom/tapjoy/internal/ef;->d:[I

    return-void
.end method
