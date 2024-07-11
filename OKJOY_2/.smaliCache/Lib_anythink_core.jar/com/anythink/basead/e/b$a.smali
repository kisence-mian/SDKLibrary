.class public final Lcom/anythink/basead/e/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/anythink/basead/e/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/anythink/basead/e/b$a;->a:I

    .line 30
    const/4 v1, 0x2

    sput v1, Lcom/anythink/basead/e/b$a;->b:I

    .line 28
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v0

    sput-object v2, Lcom/anythink/basead/e/b$a;->c:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[I
    .registers 1

    .line 28
    sget-object v0, Lcom/anythink/basead/e/b$a;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
