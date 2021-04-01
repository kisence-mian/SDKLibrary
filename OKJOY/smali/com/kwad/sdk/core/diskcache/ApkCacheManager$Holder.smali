.class final enum Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/ApkCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

.field public static final enum INSTANCE:Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;


# instance fields
.field private mInstance:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    sget-object v1, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->INSTANCE:Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->$VALUES:[Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;-><init>(Lcom/kwad/sdk/core/diskcache/ApkCacheManager$a;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->mInstance:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;
    .registers 2

    const-class v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    return-object v0
.end method

.method public static values()[Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->$VALUES:[Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    invoke-virtual {v0}, [Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;

    return-object v0
.end method


# virtual methods
.method getInstance()Lcom/kwad/sdk/core/diskcache/ApkCacheManager;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/ApkCacheManager$Holder;->mInstance:Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    return-object v0
.end method
