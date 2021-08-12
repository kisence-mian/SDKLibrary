.class public final enum Lcom/sigmob/sdk/base/common/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/common/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/common/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/common/e$a;

.field public static final enum b:Lcom/sigmob/sdk/base/common/e$a;

.field private static final synthetic c:[Lcom/sigmob/sdk/base/common/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/sigmob/sdk/base/common/e$a;

    const-string v1, "TRACKING_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/common/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/common/e$a;->a:Lcom/sigmob/sdk/base/common/e$a;

    new-instance v1, Lcom/sigmob/sdk/base/common/e$a;

    const-string v3, "QUARTILE_EVENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/base/common/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/common/e$a;->b:Lcom/sigmob/sdk/base/common/e$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sigmob/sdk/base/common/e$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sigmob/sdk/base/common/e$a;->c:[Lcom/sigmob/sdk/base/common/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/common/e$a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/common/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/common/e$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/common/e$a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/common/e$a;->c:[Lcom/sigmob/sdk/base/common/e$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/common/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/common/e$a;

    return-object v0
.end method
