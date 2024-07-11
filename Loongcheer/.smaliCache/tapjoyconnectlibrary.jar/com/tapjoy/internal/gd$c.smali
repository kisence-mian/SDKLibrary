.class final Lcom/tapjoy/internal/gd$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tapjoy/internal/gd$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field private static final synthetic f:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/tapjoy/internal/gd$c;->a:I

    .line 44
    const/4 v1, 0x2

    sput v1, Lcom/tapjoy/internal/gd$c;->b:I

    .line 45
    const/4 v2, 0x3

    sput v2, Lcom/tapjoy/internal/gd$c;->c:I

    .line 46
    const/4 v3, 0x4

    sput v3, Lcom/tapjoy/internal/gd$c;->d:I

    .line 47
    const/4 v4, 0x5

    sput v4, Lcom/tapjoy/internal/gd$c;->e:I

    .line 41
    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v1, v5, v0

    aput v2, v5, v1

    aput v3, v5, v2

    aput v4, v5, v3

    sput-object v5, Lcom/tapjoy/internal/gd$c;->f:[I

    return-void
.end method

.method public static a()[I
    .registers 1

    .line 41
    sget-object v0, Lcom/tapjoy/internal/gd$c;->f:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
