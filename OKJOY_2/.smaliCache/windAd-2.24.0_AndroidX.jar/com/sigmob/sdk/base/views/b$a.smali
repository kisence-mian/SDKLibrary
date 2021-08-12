.class public final enum Lcom/sigmob/sdk/base/views/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/base/views/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/base/views/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/base/views/b$a;

.field public static final enum b:Lcom/sigmob/sdk/base/views/b$a;

.field public static final enum c:Lcom/sigmob/sdk/base/views/b$a;

.field private static final synthetic d:[Lcom/sigmob/sdk/base/views/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/sigmob/sdk/base/views/b$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/sdk/base/views/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/sdk/base/views/b$a;->a:Lcom/sigmob/sdk/base/views/b$a;

    new-instance v1, Lcom/sigmob/sdk/base/views/b$a;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/sdk/base/views/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/sdk/base/views/b$a;->b:Lcom/sigmob/sdk/base/views/b$a;

    new-instance v3, Lcom/sigmob/sdk/base/views/b$a;

    const-string v5, "JAVASCRIPT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/sdk/base/views/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/sdk/base/views/b$a;->c:Lcom/sigmob/sdk/base/views/b$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/sigmob/sdk/base/views/b$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/sigmob/sdk/base/views/b$a;->d:[Lcom/sigmob/sdk/base/views/b$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/base/views/b$a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/base/views/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/base/views/b$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/base/views/b$a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/base/views/b$a;->d:[Lcom/sigmob/sdk/base/views/b$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/base/views/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/base/views/b$a;

    return-object v0
.end method
