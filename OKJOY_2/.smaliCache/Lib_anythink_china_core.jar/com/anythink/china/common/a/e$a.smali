.class public final Lcom/anythink/china/common/a/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/common/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/china/common/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/anythink/china/common/a/e$a;->a:I

    .line 52
    const/4 v1, 0x2

    sput v1, Lcom/anythink/china/common/a/e$a;->b:I

    .line 53
    const/4 v2, 0x3

    sput v2, Lcom/anythink/china/common/a/e$a;->c:I

    .line 54
    const/4 v3, 0x4

    sput v3, Lcom/anythink/china/common/a/e$a;->d:I

    .line 50
    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v1, v4, v0

    aput v2, v4, v1

    aput v3, v4, v2

    sput-object v4, Lcom/anythink/china/common/a/e$a;->e:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a()[I
    .registers 1

    .line 50
    sget-object v0, Lcom/anythink/china/common/a/e$a;->e:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
