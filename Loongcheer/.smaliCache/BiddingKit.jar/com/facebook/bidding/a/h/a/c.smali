.class public final enum Lcom/facebook/bidding/a/h/a/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/bidding/a/h/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/bidding/a/h/a/c;

.field public static final enum b:Lcom/facebook/bidding/a/h/a/c;

.field private static final synthetic e:[Lcom/facebook/bidding/a/h/a/c;


# instance fields
.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/facebook/bidding/a/h/a/c;

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/bidding/a/h/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/bidding/a/h/a/c;->a:Lcom/facebook/bidding/a/h/a/c;

    new-instance v1, Lcom/facebook/bidding/a/h/a/c;

    const-string v4, "POST"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/facebook/bidding/a/h/a/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/facebook/bidding/a/h/a/c;->b:Lcom/facebook/bidding/a/h/a/c;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/facebook/bidding/a/h/a/c;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/facebook/bidding/a/h/a/c;->e:[Lcom/facebook/bidding/a/h/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/facebook/bidding/a/h/a/c;->c:Z

    iput-boolean p4, p0, Lcom/facebook/bidding/a/h/a/c;->d:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/bidding/a/h/a/c;
    .registers 2

    const-class v0, Lcom/facebook/bidding/a/h/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/bidding/a/h/a/c;

    return-object p0
.end method

.method public static values()[Lcom/facebook/bidding/a/h/a/c;
    .registers 1

    sget-object v0, Lcom/facebook/bidding/a/h/a/c;->e:[Lcom/facebook/bidding/a/h/a/c;

    invoke-virtual {v0}, [Lcom/facebook/bidding/a/h/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/bidding/a/h/a/c;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/bidding/a/h/a/c;->c:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/bidding/a/h/a/c;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/bidding/a/h/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
