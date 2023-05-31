.class public abstract enum Lcom/taptap/sdk/RegionType;
.super Ljava/lang/Enum;
.source "RegionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taptap/sdk/RegionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taptap/sdk/RegionType;

.field public static final enum CN:Lcom/taptap/sdk/RegionType;

.field public static final enum IO:Lcom/taptap/sdk/RegionType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/taptap/sdk/RegionType$1;

    const-string v1, "CN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/taptap/sdk/RegionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taptap/sdk/RegionType;->CN:Lcom/taptap/sdk/RegionType;

    .line 38
    new-instance v1, Lcom/taptap/sdk/RegionType$2;

    const-string v3, "IO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/taptap/sdk/RegionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/taptap/sdk/RegionType;->IO:Lcom/taptap/sdk/RegionType;

    .line 39
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/taptap/sdk/RegionType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/taptap/sdk/RegionType;->$VALUES:[Lcom/taptap/sdk/RegionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/taptap/sdk/RegionType$1;)V
    .registers 4

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/taptap/sdk/RegionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taptap/sdk/RegionType;
    .registers 2

    .line 1
    const-class v0, Lcom/taptap/sdk/RegionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taptap/sdk/RegionType;

    return-object p0
.end method

.method public static values()[Lcom/taptap/sdk/RegionType;
    .registers 1

    .line 1
    sget-object v0, Lcom/taptap/sdk/RegionType;->$VALUES:[Lcom/taptap/sdk/RegionType;

    invoke-virtual {v0}, [Lcom/taptap/sdk/RegionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taptap/sdk/RegionType;

    return-object v0
.end method


# virtual methods
.method public abstract authorizeUrl()Ljava/lang/String;
.end method

.method public abstract getOpenApiHost()Ljava/lang/String;
.end method

.method public abstract getWebHost()Ljava/lang/String;
.end method

.method public abstract profileUrl()Ljava/lang/String;
.end method

.method public abstract targetActionName()Ljava/lang/String;
.end method

.method public abstract testQualificationUrl()Ljava/lang/String;
.end method

.method public abstract tokenUrl()Ljava/lang/String;
.end method
