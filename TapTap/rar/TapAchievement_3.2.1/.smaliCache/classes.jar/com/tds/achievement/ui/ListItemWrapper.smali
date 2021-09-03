.class Lcom/tds/achievement/ui/ListItemWrapper;
.super Ljava/lang/Object;
.source "ListItemWrapper.java"


# static fields
.field public static final BEAN_TYPE_ACHIEVEMENT:I = 0x2

.field public static final BEAN_TYPE_HEAD:I = 0x1

.field public static final BEAN_TYPE_NONE:I = 0x0

.field public static final BEAN_TYPE_NOT_REACH_DIVIDER:I = 0x3

.field public static final BEAN_TYPE_PLACE_HOLDER:I = 0x4


# instance fields
.field public achievement:Lcom/tds/achievement/TapAchievementBean;

.field public allNum:I

.field public hasReachedRecord:Z

.field public itemPosition:I

.field public itemType:I

.field public reachNum:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/achievement/ui/ListItemWrapper;->reachNum:I

    .line 17
    iput v0, p0, Lcom/tds/achievement/ui/ListItemWrapper;->allNum:I

    .line 21
    return-void
.end method

.method public static getAchievementInstance(Lcom/tds/achievement/TapAchievementBean;I)Lcom/tds/achievement/ui/ListItemWrapper;
    .registers 4
    .param p0, "achievement"    # Lcom/tds/achievement/TapAchievementBean;
    .param p1, "itemPosition"    # I

    .line 35
    new-instance v0, Lcom/tds/achievement/ui/ListItemWrapper;

    invoke-direct {v0}, Lcom/tds/achievement/ui/ListItemWrapper;-><init>()V

    .line 36
    .local v0, "itemBean":Lcom/tds/achievement/ui/ListItemWrapper;
    const/4 v1, 0x2

    iput v1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemType:I

    .line 37
    iput-object p0, v0, Lcom/tds/achievement/ui/ListItemWrapper;->achievement:Lcom/tds/achievement/TapAchievementBean;

    .line 38
    iput p1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemPosition:I

    .line 39
    return-object v0
.end method

.method public static getHeadInstance(IIZ)Lcom/tds/achievement/ui/ListItemWrapper;
    .registers 5
    .param p0, "lockedNum"    # I
    .param p1, "allNum"    # I
    .param p2, "hasReachedRecord"    # Z

    .line 25
    new-instance v0, Lcom/tds/achievement/ui/ListItemWrapper;

    invoke-direct {v0}, Lcom/tds/achievement/ui/ListItemWrapper;-><init>()V

    .line 26
    .local v0, "itemBean":Lcom/tds/achievement/ui/ListItemWrapper;
    const/4 v1, 0x1

    iput v1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemType:I

    .line 27
    iput p0, v0, Lcom/tds/achievement/ui/ListItemWrapper;->reachNum:I

    .line 28
    iput p1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->allNum:I

    .line 29
    iput-boolean p2, v0, Lcom/tds/achievement/ui/ListItemWrapper;->hasReachedRecord:Z

    .line 30
    return-object v0
.end method

.method public static getNotReachDividerInstance()Lcom/tds/achievement/ui/ListItemWrapper;
    .registers 2

    .line 43
    new-instance v0, Lcom/tds/achievement/ui/ListItemWrapper;

    invoke-direct {v0}, Lcom/tds/achievement/ui/ListItemWrapper;-><init>()V

    .line 44
    .local v0, "itemBean":Lcom/tds/achievement/ui/ListItemWrapper;
    const/4 v1, 0x3

    iput v1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemType:I

    .line 45
    return-object v0
.end method

.method public static getPlaceHolderInstance(ZZ)Lcom/tds/achievement/ui/ListItemWrapper;
    .registers 4
    .param p0, "singleLine"    # Z
    .param p1, "isLandscape"    # Z

    .line 50
    new-instance v0, Lcom/tds/achievement/ui/ListItemWrapper;

    invoke-direct {v0}, Lcom/tds/achievement/ui/ListItemWrapper;-><init>()V

    .line 51
    .local v0, "itemBean":Lcom/tds/achievement/ui/ListItemWrapper;
    const/4 v1, 0x4

    iput v1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemType:I

    .line 52
    if-eqz p0, :cond_13

    .line 53
    if-eqz p1, :cond_f

    const/16 v1, 0x9

    goto :goto_10

    :cond_f
    const/4 v1, 0x7

    :goto_10
    iput v1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemPosition:I

    goto :goto_16

    .line 58
    :cond_13
    const/4 v1, 0x3

    iput v1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemPosition:I

    .line 60
    :goto_16
    return-object v0
.end method
