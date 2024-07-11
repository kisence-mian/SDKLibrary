.class public final enum Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

.field public static final enum BANNER_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

.field public static final enum INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

.field public static final enum REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const-string v1, "REWARD_AD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->REWARD_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    new-instance v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const-string v3, "INTERSTITIAL_AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->INTERSTITIAL_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    new-instance v3, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const-string v5, "BANNER_AD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->BANNER_AD:Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->$VALUES:[Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;
    .registers 2

    const-class v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    return-object p0
.end method

.method public static values()[Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;
    .registers 1

    sget-object v0, Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->$VALUES:[Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    invoke-virtual {v0}, [Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/okjoy/okjoysdk/topon/model/OkJoyAdInfoModel$AdType;

    return-object v0
.end method
