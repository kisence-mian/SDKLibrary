.class Lcom/tds/achievement/UserDataStore$3;
.super Ljava/lang/Object;
.source "UserDataStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/UserDataStore;->saveLocalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/tds/achievement/TapAchievementBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/UserDataStore;


# direct methods
.method constructor <init>(Lcom/tds/achievement/UserDataStore;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/achievement/UserDataStore;

    .line 117
    iput-object p1, p0, Lcom/tds/achievement/UserDataStore$3;->this$0:Lcom/tds/achievement/UserDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/TapAchievementBean;)I
    .registers 7
    .param p1, "o1"    # Lcom/tds/achievement/TapAchievementBean;
    .param p2, "o2"    # Lcom/tds/achievement/TapAchievementBean;

    .line 120
    invoke-virtual {p2}, Lcom/tds/achievement/TapAchievementBean;->getReachedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/tds/achievement/TapAchievementBean;->getReachedTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 117
    check-cast p1, Lcom/tds/achievement/TapAchievementBean;

    check-cast p2, Lcom/tds/achievement/TapAchievementBean;

    invoke-virtual {p0, p1, p2}, Lcom/tds/achievement/UserDataStore$3;->compare(Lcom/tds/achievement/TapAchievementBean;Lcom/tds/achievement/TapAchievementBean;)I

    move-result p1

    return p1
.end method
