.class public Lcom/sigmob/sdk/base/models/LoadAdRequest;
.super Ljava/lang/Object;


# static fields
.field public static final REWARD_LAST_CAMPID:Ljava/lang/String; = "reward_last_campid"

.field public static final REWARD_LAST_CRID:Ljava/lang/String; = "reward_last_crid"

.field public static final SPLASH_APP_DESC:Ljava/lang/String; = "APP_DESC"

.field public static final SPLASH_APP_TITLE:Ljava/lang/String; = "APP_TITLE"

.field public static final SPLASH_DISABLE_AD_HIDE:Ljava/lang/String; = "SPLASH_DISABLE_AD_HIDE"

.field public static final SPLASH_FETCH_TIMEOUT:Ljava/lang/String; = "FETCH_TIMEOUT"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->b:Ljava/lang/String;

    iput p3, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->c:I

    return-void
.end method


# virtual methods
.method public getAdType()I
    .registers 2

    iget v0, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->c:I

    return v0
.end method

.method public getLoadId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->e:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->e:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->e:Ljava/util/Map;

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/LoadAdRequest;->a:Ljava/lang/String;

    return-object v0
.end method
