.class Lcom/tds/achievement/UserDataStore$1;
.super Ljava/lang/Object;
.source "UserDataStore.java"

# interfaces
.implements Lcom/tds/common/reactor/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/UserDataStore;->loadRemoteData()Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/reactor/functions/Func1<",
        "Lcom/tds/common/net/ResponseBean<",
        "Lcom/tds/achievement/UserAchievementList;",
        ">;",
        "Ljava/util/List<",
        "Lcom/tds/achievement/TapAchievementBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/UserDataStore;


# direct methods
.method constructor <init>(Lcom/tds/achievement/UserDataStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/UserDataStore;

    .line 53
    iput-object p1, p0, Lcom/tds/achievement/UserDataStore$1;->this$0:Lcom/tds/achievement/UserDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 53
    check-cast p1, Lcom/tds/common/net/ResponseBean;

    invoke-virtual {p0, p1}, Lcom/tds/achievement/UserDataStore$1;->call(Lcom/tds/common/net/ResponseBean;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/tds/common/net/ResponseBean;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/net/ResponseBean<",
            "Lcom/tds/achievement/UserAchievementList;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;"
        }
    .end annotation

    .line 56
    .local p1, "response":Lcom/tds/common/net/ResponseBean;, "Lcom/tds/common/net/ResponseBean<Lcom/tds/achievement/UserAchievementList;>;"
    iget-object v0, p1, Lcom/tds/common/net/ResponseBean;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tds/achievement/UserAchievementList;

    iget-object v0, v0, Lcom/tds/achievement/UserAchievementList;->list:Ljava/util/List;

    return-object v0
.end method
