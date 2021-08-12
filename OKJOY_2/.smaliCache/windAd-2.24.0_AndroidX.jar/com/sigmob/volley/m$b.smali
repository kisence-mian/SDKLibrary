.class public final enum Lcom/sigmob/volley/m$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sigmob/volley/m$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sigmob/volley/m$b;

.field public static final enum b:Lcom/sigmob/volley/m$b;

.field public static final enum c:Lcom/sigmob/volley/m$b;

.field public static final enum d:Lcom/sigmob/volley/m$b;

.field private static final synthetic e:[Lcom/sigmob/volley/m$b;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/sigmob/volley/m$b;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sigmob/volley/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sigmob/volley/m$b;->a:Lcom/sigmob/volley/m$b;

    new-instance v1, Lcom/sigmob/volley/m$b;

    const-string v3, "NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sigmob/volley/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sigmob/volley/m$b;->b:Lcom/sigmob/volley/m$b;

    new-instance v3, Lcom/sigmob/volley/m$b;

    const-string v5, "HIGH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/sigmob/volley/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/sigmob/volley/m$b;->c:Lcom/sigmob/volley/m$b;

    new-instance v5, Lcom/sigmob/volley/m$b;

    const-string v7, "IMMEDIATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/sigmob/volley/m$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/sigmob/volley/m$b;->d:Lcom/sigmob/volley/m$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/sigmob/volley/m$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/sigmob/volley/m$b;->e:[Lcom/sigmob/volley/m$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sigmob/volley/m$b;
    .registers 2

    const-class v0, Lcom/sigmob/volley/m$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sigmob/volley/m$b;

    return-object p0
.end method

.method public static values()[Lcom/sigmob/volley/m$b;
    .registers 1

    sget-object v0, Lcom/sigmob/volley/m$b;->e:[Lcom/sigmob/volley/m$b;

    invoke-virtual {v0}, [Lcom/sigmob/volley/m$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sigmob/volley/m$b;

    return-object v0
.end method
