.class public final Lcom/anythink/china/common/a/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/china/common/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/anythink/china/common/a/c$a;",
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

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41
    sput v3, Lcom/anythink/china/common/a/c$a;->a:I

    .line 42
    sput v4, Lcom/anythink/china/common/a/c$a;->b:I

    .line 43
    sput v5, Lcom/anythink/china/common/a/c$a;->c:I

    .line 44
    sput v0, Lcom/anythink/china/common/a/c$a;->d:I

    .line 40
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/anythink/china/common/a/c$a;->a:I

    aput v2, v0, v1

    sget v1, Lcom/anythink/china/common/a/c$a;->b:I

    aput v1, v0, v3

    sget v1, Lcom/anythink/china/common/a/c$a;->c:I

    aput v1, v0, v4

    sget v1, Lcom/anythink/china/common/a/c$a;->d:I

    aput v1, v0, v5

    sput-object v0, Lcom/anythink/china/common/a/c$a;->e:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a()[I
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/anythink/china/common/a/c$a;->e:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
