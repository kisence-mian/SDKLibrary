.class Lcom/tds/achievement/AllDataStore$2;
.super Lcom/tds/common/net/json/TypeRef;
.source "AllDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/AllDataStore;->loadRemoteData()Lcom/tds/common/reactor/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tds/common/net/json/TypeRef<",
        "Lcom/tds/common/net/ResponseBean<",
        "Lcom/tds/achievement/AchievementList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/AllDataStore;


# direct methods
.method constructor <init>(Lcom/tds/achievement/AllDataStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/AllDataStore;

    .line 24
    iput-object p1, p0, Lcom/tds/achievement/AllDataStore$2;->this$0:Lcom/tds/achievement/AllDataStore;

    invoke-direct {p0}, Lcom/tds/common/net/json/TypeRef;-><init>()V

    return-void
.end method
