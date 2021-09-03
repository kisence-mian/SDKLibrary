.class Lcom/tds/achievement/AchievementImpl$4;
.super Ljava/lang/Object;
.source "AchievementImpl.java"

# interfaces
.implements Lcom/tds/common/net/intercerptor/AuthInterceptor$TDSAccountProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AchievementImpl;->initSkynet(Lcom/tds/common/entities/TapAccountProvider;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/AchievementImpl;

.field final synthetic val$accountProvider:Lcom/tds/common/entities/TapAccountProvider;

.field final synthetic val$clientToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tds/achievement/AchievementImpl;Lcom/tds/common/entities/TapAccountProvider;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/achievement/AchievementImpl;

    .line 260
    iput-object p1, p0, Lcom/tds/achievement/AchievementImpl$4;->this$0:Lcom/tds/achievement/AchievementImpl;

    iput-object p2, p0, Lcom/tds/achievement/AchievementImpl$4;->val$accountProvider:Lcom/tds/common/entities/TapAccountProvider;

    iput-object p3, p0, Lcom/tds/achievement/AchievementImpl$4;->val$clientToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTdsAccount()Lcom/tds/common/account/TdsAccount;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tds/common/account/TdsAccount<",
            "*>;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/tds/achievement/AchievementImpl$4;->val$accountProvider:Lcom/tds/common/entities/TapAccountProvider;

    invoke-interface {v0}, Lcom/tds/common/entities/TapAccountProvider;->getAccessToken()Lcom/tds/common/entities/AccessToken;

    move-result-object v0

    .line 264
    .local v0, "token":Lcom/tds/common/entities/AccessToken;
    if-eqz v0, :cond_18

    .line 265
    new-instance v1, Lcom/tds/common/account/LCAccount;

    iget-object v2, p0, Lcom/tds/achievement/AchievementImpl$4;->this$0:Lcom/tds/achievement/AchievementImpl;

    # getter for: Lcom/tds/achievement/AchievementImpl;->clientId:Ljava/lang/String;
    invoke-static {v2}, Lcom/tds/achievement/AchievementImpl;->access$200(Lcom/tds/achievement/AchievementImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tds/achievement/AchievementImpl$4;->val$clientToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/tds/common/entities/AccessToken;->accessToken:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/tds/common/account/LCAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 267
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method
