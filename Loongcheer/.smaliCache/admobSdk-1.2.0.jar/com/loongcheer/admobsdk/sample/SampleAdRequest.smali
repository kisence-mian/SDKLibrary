.class public Lcom/loongcheer/admobsdk/sample/SampleAdRequest;
.super Ljava/lang/Object;
.source "SampleAdRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .line 40
    const-string v0, "233333"

    return-object v0
.end method


# virtual methods
.method public setIncome(I)V
    .registers 2
    .param p1, "income"    # I

    .line 37
    return-void
.end method

.method public setKeywords(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "keywords":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method

.method public setShouldAddAwesomeSauce(Z)V
    .registers 2
    .param p1, "shouldAddAwesomeSauce"    # Z

    .line 33
    return-void
.end method

.method public setTestMode(Z)V
    .registers 2
    .param p1, "useTesting"    # Z

    .line 29
    return-void
.end method
