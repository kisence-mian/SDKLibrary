.class public Lcom/anythink/hb/data/BidRequestInfo;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_APP_ID:Ljava/lang/String; = "KEY_APP_ID"

.field public static final KEY_APP_KEY:Ljava/lang/String; = "KEY_APP_KEY"

.field public static final KEY_BANNER_SIZE:Ljava/lang/String; = "KEY_BANNER_SIZE"

.field public static final KEY_BIDDER_CLASS:Ljava/lang/String; = "KEY_BIDDER_CLASS"

.field public static final KEY_CUSTOM_INFO:Ljava/lang/String; = "KEY_CUSTOM_INFO"

.field public static final KEY_PLACEMENT_ID:Ljava/lang/String; = "KEY_PLACEMENT_ID"

.field public static final KEY_PLATFORM_ID:Ljava/lang/String; = "KEY_PLATFORM_ID"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    .line 26
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getAppId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_APP_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_APP_ID"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 44
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_APP_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_APP_KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_APP_KEY"

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 52
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_APP_KEY"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getBannerSize()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_BANNER_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_BANNER_SIZE"

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 92
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_BANNER_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getBidderClass()Ljava/lang/Class;
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_BIDDER_CLASS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_BIDDER_CLASS"

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_21

    .line 76
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_BIDDER_CLASS"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 78
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getCustomInfo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_CUSTOM_INFO"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_CUSTOM_INFO"

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 68
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_CUSTOM_INFO"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_PLACEMENT_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_PLACEMENT_ID"

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 60
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_PLACEMENT_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getPlatformId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_PLATFORM_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_PLATFORM_ID"

    .line 83
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 84
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    const-string v1, "KEY_PLATFORM_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 37
    iget-object v0, p0, Lcom/anythink/hb/data/BidRequestInfo;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_d
    return-void
.end method
