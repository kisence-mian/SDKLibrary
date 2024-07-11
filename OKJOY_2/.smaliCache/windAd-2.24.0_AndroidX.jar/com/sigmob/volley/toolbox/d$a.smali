.class public final enum Lcom/sigmob/volley/toolbox/d$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/toolbox/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/volley/toolbox/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/volley/toolbox/d$a;

.field public static final enum b:Lcom/sigmob/volley/toolbox/d$a;

.field public static final enum c:Lcom/sigmob/volley/toolbox/d$a;

.field public static final enum d:Lcom/sigmob/volley/toolbox/d$a;

.field public static final enum e:Lcom/sigmob/volley/toolbox/d$a;

.field private static final synthetic g:[Lcom/sigmob/volley/toolbox/d$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/sigmob/volley/toolbox/d$a;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sigmob/volley/toolbox/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sigmob/volley/toolbox/d$a;->a:Lcom/sigmob/volley/toolbox/d$a;

    new-instance v1, Lcom/sigmob/volley/toolbox/d$a;

    const-string v4, "PICTURE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/sigmob/volley/toolbox/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sigmob/volley/toolbox/d$a;->b:Lcom/sigmob/volley/toolbox/d$a;

    new-instance v4, Lcom/sigmob/volley/toolbox/d$a;

    const-string v6, "FILE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/sigmob/volley/toolbox/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sigmob/volley/toolbox/d$a;->c:Lcom/sigmob/volley/toolbox/d$a;

    new-instance v6, Lcom/sigmob/volley/toolbox/d$a;

    const-string v8, "APK"

    const/16 v9, 0x8

    invoke-direct {v6, v8, v7, v9}, Lcom/sigmob/volley/toolbox/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sigmob/volley/toolbox/d$a;->d:Lcom/sigmob/volley/toolbox/d$a;

    new-instance v8, Lcom/sigmob/volley/toolbox/d$a;

    const-string v9, "OTHER"

    const/4 v10, 0x4

    const/16 v11, 0x9

    invoke-direct {v8, v9, v10, v11}, Lcom/sigmob/volley/toolbox/d$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sigmob/volley/toolbox/d$a;->e:Lcom/sigmob/volley/toolbox/d$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/sigmob/volley/toolbox/d$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v5

    aput-object v6, v9, v7

    aput-object v8, v9, v10

    sput-object v9, Lcom/sigmob/volley/toolbox/d$a;->g:[Lcom/sigmob/volley/toolbox/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sigmob/volley/toolbox/d$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/volley/toolbox/d$a;
    .registers 2

    const-class v0, Lcom/sigmob/volley/toolbox/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/volley/toolbox/d$a;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/volley/toolbox/d$a;
    .registers 1

    sget-object v0, Lcom/sigmob/volley/toolbox/d$a;->g:[Lcom/sigmob/volley/toolbox/d$a;

    invoke-virtual {v0}, [Lcom/sigmob/volley/toolbox/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/volley/toolbox/d$a;

    return-object v0
.end method
