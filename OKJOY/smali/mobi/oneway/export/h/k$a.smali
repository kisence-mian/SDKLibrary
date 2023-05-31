.class final enum Lmobi/oneway/export/h/k$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/h/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/oneway/export/h/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmobi/oneway/export/h/k$a;

.field public static final enum b:Lmobi/oneway/export/h/k$a;

.field private static final synthetic c:[Lmobi/oneway/export/h/k$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lmobi/oneway/export/h/k$a;

    const-string v1, "lat"

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/h/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/h/k$a;->a:Lmobi/oneway/export/h/k$a;

    new-instance v0, Lmobi/oneway/export/h/k$a;

    const-string v1, "lon"

    invoke-direct {v0, v1, v3}, Lmobi/oneway/export/h/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/h/k$a;->b:Lmobi/oneway/export/h/k$a;

    const/4 v0, 0x2

    new-array v0, v0, [Lmobi/oneway/export/h/k$a;

    sget-object v1, Lmobi/oneway/export/h/k$a;->a:Lmobi/oneway/export/h/k$a;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/oneway/export/h/k$a;->b:Lmobi/oneway/export/h/k$a;

    aput-object v1, v0, v3

    sput-object v0, Lmobi/oneway/export/h/k$a;->c:[Lmobi/oneway/export/h/k$a;

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

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/h/k$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lmobi/oneway/export/h/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/h/k$a;

    return-object v0
.end method

.method public static values()[Lmobi/oneway/export/h/k$a;
    .registers 1

    sget-object v0, Lmobi/oneway/export/h/k$a;->c:[Lmobi/oneway/export/h/k$a;

    invoke-virtual {v0}, [Lmobi/oneway/export/h/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/h/k$a;

    return-object v0
.end method
