.class public final enum Lcom/sigmob/sdk/common/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/sdk/common/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/sdk/common/a$a;

.field public static final enum b:Lcom/sigmob/sdk/common/a$a;

.field public static final enum c:Lcom/sigmob/sdk/common/a$a;

.field public static final enum d:Lcom/sigmob/sdk/common/a$a;

.field private static final synthetic f:[Lcom/sigmob/sdk/common/a$a;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/sigmob/sdk/common/a$a;

    const-string v1, "FORCE_PORTRAIT"

    const/4 v2, 0x0

    const-string v3, "portrait"

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/sdk/common/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sigmob/sdk/common/a$a;->a:Lcom/sigmob/sdk/common/a$a;

    new-instance v1, Lcom/sigmob/sdk/common/a$a;

    const-string v3, "FORCE_LANDSCAPE"

    const/4 v4, 0x1

    const-string v5, "landscape"

    invoke-direct {v1, v3, v4, v5}, Lcom/sigmob/sdk/common/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sigmob/sdk/common/a$a;->b:Lcom/sigmob/sdk/common/a$a;

    new-instance v3, Lcom/sigmob/sdk/common/a$a;

    const-string v5, "DEVICE_ORIENTATION"

    const/4 v6, 0x2

    const-string v7, "device"

    invoke-direct {v3, v5, v6, v7}, Lcom/sigmob/sdk/common/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/sigmob/sdk/common/a$a;->c:Lcom/sigmob/sdk/common/a$a;

    new-instance v5, Lcom/sigmob/sdk/common/a$a;

    const-string v7, "UNDEFINED"

    const/4 v8, 0x3

    const-string v9, ""

    invoke-direct {v5, v7, v8, v9}, Lcom/sigmob/sdk/common/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/sigmob/sdk/common/a$a;->d:Lcom/sigmob/sdk/common/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sigmob/sdk/common/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sigmob/sdk/common/a$a;->f:[Lcom/sigmob/sdk/common/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sigmob/sdk/common/a$a;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/sdk/common/a$a;
    .registers 2

    const-class v0, Lcom/sigmob/sdk/common/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/sdk/common/a$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/sdk/common/a$a;
    .registers 1

    sget-object v0, Lcom/sigmob/sdk/common/a$a;->f:[Lcom/sigmob/sdk/common/a$a;

    invoke-virtual {v0}, [Lcom/sigmob/sdk/common/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/sdk/common/a$a;

    return-object v0
.end method
