.class public final enum Lcom/qq/e/comm/net/rr/Request$Method;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/e/comm/net/rr/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qq/e/comm/net/rr/Request$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET:Lcom/qq/e/comm/net/rr/Request$Method;

.field public static final enum POST:Lcom/qq/e/comm/net/rr/Request$Method;

.field private static final synthetic a:[Lcom/qq/e/comm/net/rr/Request$Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/qq/e/comm/net/rr/Request$Method;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qq/e/comm/net/rr/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qq/e/comm/net/rr/Request$Method;->GET:Lcom/qq/e/comm/net/rr/Request$Method;

    new-instance v1, Lcom/qq/e/comm/net/rr/Request$Method;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/qq/e/comm/net/rr/Request$Method;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/qq/e/comm/net/rr/Request$Method;->POST:Lcom/qq/e/comm/net/rr/Request$Method;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/qq/e/comm/net/rr/Request$Method;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/qq/e/comm/net/rr/Request$Method;->a:[Lcom/qq/e/comm/net/rr/Request$Method;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qq/e/comm/net/rr/Request$Method;
    .registers 2

    const-class v0, Lcom/qq/e/comm/net/rr/Request$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qq/e/comm/net/rr/Request$Method;

    return-object p0
.end method

.method public static values()[Lcom/qq/e/comm/net/rr/Request$Method;
    .registers 1

    sget-object v0, Lcom/qq/e/comm/net/rr/Request$Method;->a:[Lcom/qq/e/comm/net/rr/Request$Method;

    invoke-virtual {v0}, [Lcom/qq/e/comm/net/rr/Request$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qq/e/comm/net/rr/Request$Method;

    return-object v0
.end method
