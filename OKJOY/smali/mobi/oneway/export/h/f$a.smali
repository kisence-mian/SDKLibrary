.class final enum Lmobi/oneway/export/h/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/oneway/export/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmobi/oneway/export/h/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lmobi/oneway/export/h/f$a;

.field public static final enum b:Lmobi/oneway/export/h/f$a;

.field public static final enum c:Lmobi/oneway/export/h/f$a;

.field private static final synthetic d:[Lmobi/oneway/export/h/f$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lmobi/oneway/export/h/f$a;

    const-string v1, "MAC"

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/h/f$a;->a:Lmobi/oneway/export/h/f$a;

    new-instance v0, Lmobi/oneway/export/h/f$a;

    const-string v1, "SSID"

    invoke-direct {v0, v1, v3}, Lmobi/oneway/export/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/h/f$a;->b:Lmobi/oneway/export/h/f$a;

    new-instance v0, Lmobi/oneway/export/h/f$a;

    const-string v1, "BSSID"

    invoke-direct {v0, v1, v4}, Lmobi/oneway/export/h/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmobi/oneway/export/h/f$a;->c:Lmobi/oneway/export/h/f$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lmobi/oneway/export/h/f$a;

    sget-object v1, Lmobi/oneway/export/h/f$a;->a:Lmobi/oneway/export/h/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lmobi/oneway/export/h/f$a;->b:Lmobi/oneway/export/h/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lmobi/oneway/export/h/f$a;->c:Lmobi/oneway/export/h/f$a;

    aput-object v1, v0, v4

    sput-object v0, Lmobi/oneway/export/h/f$a;->d:[Lmobi/oneway/export/h/f$a;

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

.method public static valueOf(Ljava/lang/String;)Lmobi/oneway/export/h/f$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lmobi/oneway/export/h/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmobi/oneway/export/h/f$a;

    return-object v0
.end method

.method public static values()[Lmobi/oneway/export/h/f$a;
    .registers 1

    sget-object v0, Lmobi/oneway/export/h/f$a;->d:[Lmobi/oneway/export/h/f$a;

    invoke-virtual {v0}, [Lmobi/oneway/export/h/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmobi/oneway/export/h/f$a;

    return-object v0
.end method
