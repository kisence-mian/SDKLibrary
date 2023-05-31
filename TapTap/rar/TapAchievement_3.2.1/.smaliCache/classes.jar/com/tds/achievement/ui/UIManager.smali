.class public Lcom/tds/achievement/ui/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"


# static fields
.field public static final SCALE:F

.field private static instance:Lcom/tds/achievement/ui/UIManager;


# instance fields
.field private adapter:Lcom/tds/achievement/ui/ListAdapter;

.field private beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/achievement/ui/ListItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

.field private isLandscape:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/tds/achievement/ui/UIManager;)Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/UIManager;

    .line 28
    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tds/achievement/ui/UIManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/UIManager;

    .line 28
    iget-object v0, p0, Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;

    return-object v0
.end method

.method private addItems(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/TapAchievementBean;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7a

    .line 228
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_22

    .line 229
    if-nez v0, :cond_19

    .line 230
    iget-boolean v1, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x8

    goto :goto_18

    :cond_17
    const/4 v1, 0x6

    .local v1, "position":I
    :goto_18
    goto :goto_68

    .line 235
    .end local v1    # "position":I
    :cond_19
    iget-boolean v1, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    if-eqz v1, :cond_20

    const/16 v1, 0x9

    goto :goto_21

    :cond_20
    const/4 v1, 0x7

    .restart local v1    # "position":I
    :goto_21
    goto :goto_68

    .line 241
    .end local v1    # "position":I
    :cond_22
    if-nez v0, :cond_26

    .line 242
    const/4 v1, 0x0

    .restart local v1    # "position":I
    goto :goto_68

    .line 243
    .end local v1    # "position":I
    :cond_26
    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 244
    iget-boolean v3, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v2, v1

    :goto_2f
    move v1, v2

    .restart local v1    # "position":I
    goto :goto_68

    .line 249
    .end local v1    # "position":I
    :cond_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v3, v2

    if-nez v3, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_42

    :cond_3d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    .line 250
    .local v3, "size":I
    :goto_42
    add-int/lit8 v4, v3, -0x2

    if-ne v0, v4, :cond_4d

    .line 251
    iget-boolean v4, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    if-eqz v4, :cond_4b

    move v2, v1

    :cond_4b
    move v1, v2

    .restart local v1    # "position":I
    goto :goto_68

    .line 255
    .end local v1    # "position":I
    :cond_4d
    add-int/lit8 v1, v3, -0x1

    if-ne v0, v1, :cond_53

    .line 256
    const/4 v1, 0x3

    .restart local v1    # "position":I
    goto :goto_68

    .line 257
    .end local v1    # "position":I
    :cond_53
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_60

    .line 258
    iget-boolean v1, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    if-eqz v1, :cond_5e

    const/16 v1, 0xa

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x4

    .restart local v1    # "position":I
    :goto_5f
    goto :goto_68

    .line 262
    .end local v1    # "position":I
    :cond_60
    iget-boolean v1, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    if-eqz v1, :cond_67

    const/16 v1, 0xb

    goto :goto_68

    :cond_67
    const/4 v1, 0x5

    .line 269
    .end local v3    # "size":I
    .restart local v1    # "position":I
    :goto_68
    iget-object v2, p0, Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tds/achievement/TapAchievementBean;

    invoke-static {v3, v1}, Lcom/tds/achievement/ui/ListItemWrapper;->getAchievementInstance(Lcom/tds/achievement/TapAchievementBean;I)Lcom/tds/achievement/ui/ListItemWrapper;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v1    # "position":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    .end local v0    # "i":I
    :cond_7a
    return-void
.end method

.method public static getInstance()Lcom/tds/achievement/ui/UIManager;
    .registers 2

    .line 43
    sget-object v0, Lcom/tds/achievement/ui/UIManager;->instance:Lcom/tds/achievement/ui/UIManager;

    if-nez v0, :cond_17

    .line 44
    const-class v0, Lcom/tds/achievement/ui/UIManager;

    monitor-enter v0

    .line 45
    :try_start_7
    sget-object v1, Lcom/tds/achievement/ui/UIManager;->instance:Lcom/tds/achievement/ui/UIManager;

    if-nez v1, :cond_12

    .line 46
    new-instance v1, Lcom/tds/achievement/ui/UIManager;

    invoke-direct {v1}, Lcom/tds/achievement/ui/UIManager;-><init>()V

    sput-object v1, Lcom/tds/achievement/ui/UIManager;->instance:Lcom/tds/achievement/ui/UIManager;

    .line 48
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 50
    :cond_17
    :goto_17
    sget-object v0, Lcom/tds/achievement/ui/UIManager;->instance:Lcom/tds/achievement/ui/UIManager;

    return-object v0
.end method

.method private prepareData()V
    .registers 12

    .line 175
    invoke-static {}, Lcom/tds/achievement/TapAchievement;->getLocalAllAchievementList()Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "allAchievementList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    invoke-static {}, Lcom/tds/achievement/TapAchievement;->getLocalUserAchievementList()Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "userAchievementList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v2, "reachedList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 181
    .local v3, "notReachHashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/tds/achievement/TapAchievementBean;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/achievement/TapAchievementBean;

    .line 182
    .local v5, "item":Lcom/tds/achievement/TapAchievementBean;
    invoke-virtual {v5}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .end local v5    # "item":Lcom/tds/achievement/TapAchievementBean;
    goto :goto_16

    .line 185
    :cond_2a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tds/achievement/TapAchievementBean;

    .line 186
    .restart local v5    # "item":Lcom/tds/achievement/TapAchievementBean;
    invoke-virtual {v5}, Lcom/tds/achievement/TapAchievementBean;->isFullReached()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 187
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v5}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 190
    :cond_4b
    invoke-virtual {v5}, Lcom/tds/achievement/TapAchievementBean;->getAchievementId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v5    # "item":Lcom/tds/achievement/TapAchievementBean;
    :goto_52
    goto :goto_2e

    .line 193
    :cond_53
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    .local v4, "notReachList":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/TapAchievementBean;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;

    .line 198
    nop

    .line 199
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 200
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v8, :cond_76

    move v8, v10

    goto :goto_77

    :cond_76
    move v8, v9

    .line 199
    :goto_77
    invoke-static {v6, v7, v8}, Lcom/tds/achievement/ui/ListItemWrapper;->getHeadInstance(IIZ)Lcom/tds/achievement/ui/ListItemWrapper;

    move-result-object v6

    .line 198
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-direct {p0, v2}, Lcom/tds/achievement/ui/UIManager;->addItems(Ljava/util/List;)V

    .line 205
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v10, :cond_9d

    .line 206
    iget-object v5, p0, Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;

    .line 207
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_93

    move v6, v10

    goto :goto_94

    :cond_93
    move v6, v9

    :goto_94
    iget-boolean v7, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    invoke-static {v6, v7}, Lcom/tds/achievement/ui/ListItemWrapper;->getPlaceHolderInstance(ZZ)Lcom/tds/achievement/ui/ListItemWrapper;

    move-result-object v6

    .line 206
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_9d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_c9

    .line 212
    iget-object v5, p0, Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;

    invoke-static {}, Lcom/tds/achievement/ui/ListItemWrapper;->getNotReachDividerInstance()Lcom/tds/achievement/ui/ListItemWrapper;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0, v4}, Lcom/tds/achievement/ui/UIManager;->addItems(Ljava/util/List;)V

    .line 217
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v10, :cond_c9

    .line 218
    iget-object v5, p0, Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;

    .line 219
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_c0

    move v9, v10

    :cond_c0
    iget-boolean v6, p0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    invoke-static {v9, v6}, Lcom/tds/achievement/ui/ListItemWrapper;->getPlaceHolderInstance(ZZ)Lcom/tds/achievement/ui/ListItemWrapper;

    move-result-object v6

    .line 218
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_c9
    iget-object v5, p0, Lcom/tds/achievement/ui/UIManager;->adapter:Lcom/tds/achievement/ui/ListAdapter;

    iget-object v6, p0, Lcom/tds/achievement/ui/UIManager;->beanList:Ljava/util/List;

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/tds/achievement/ui/ListAdapter;->setData(Ljava/util/List;Landroid/util/Pair;)V

    .line 223
    return-void
.end method


# virtual methods
.method public showPopToast(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "achievement"    # Lcom/tds/achievement/TapAchievementBean;

    .line 54
    invoke-static {}, Lcom/tds/achievement/ui/PopToastManager;->getInstance()Lcom/tds/achievement/ui/PopToastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tds/achievement/ui/PopToastManager;->show(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;)V

    .line 55
    return-void
.end method

.method public showSheet(Landroid/app/Activity;Z)V
    .registers 20
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "isLandscape"    # Z

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/tds/achievement/ui/UIManager;->isLandscape:Z

    .line 59
    iget-object v3, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 60
    return-void

    .line 62
    :cond_13
    new-instance v3, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-direct {v3, v1, v2}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    .line 64
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v3, "viewRoot":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 69
    .local v4, "closeBG":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    sget v6, Lcom/tds/achievement/ui/UIManager;->SCALE:F

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v6, v7}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v7

    .line 71
    .local v7, "dp16":I
    const/4 v9, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/16 v12, 0x8

    const/4 v13, 0x5

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/4 v5, 0x0

    const/16 v16, 0x0

    if-eqz v2, :cond_65

    .line 72
    new-array v12, v12, [F

    int-to-float v8, v7

    aput v8, v12, v5

    int-to-float v8, v7

    aput v8, v12, v14

    aput v16, v12, v15

    aput v16, v12, v11

    aput v16, v12, v10

    aput v16, v12, v13

    int-to-float v8, v7

    aput v8, v12, v9

    int-to-float v8, v7

    const/4 v9, 0x7

    aput v8, v12, v9

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_7f

    .line 74
    :cond_65
    new-array v8, v12, [F

    int-to-float v12, v7

    aput v12, v8, v5

    int-to-float v12, v7

    aput v12, v8, v14

    int-to-float v12, v7

    aput v12, v8, v15

    int-to-float v12, v7

    aput v12, v8, v11

    aput v16, v8, v10

    aput v16, v8, v13

    aput v16, v8, v9

    const/4 v9, 0x7

    aput v16, v8, v9

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 79
    :goto_7f
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .local v8, "closeRoot":Landroid/widget/FrameLayout;
    const/4 v9, -0x2

    if-eqz v2, :cond_8e

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_94

    :cond_8e
    const/4 v11, -0x1

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_94
    move-object v9, v10

    .line 84
    .local v9, "closeRootLP":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v10, "imageView":Landroid/widget/ImageView;
    const/high16 v11, 0x42300000    # 44.0f

    invoke-static {v6, v11}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v11

    .line 89
    .local v11, "dp44":I
    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v6, v12}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v12

    .line 90
    .local v12, "dp12":I
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    .local v14, "imageViewLP":Landroid/widget/FrameLayout$LayoutParams;
    iput v13, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    invoke-virtual {v10, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v10, v12, v12, v12, v12}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 94
    const-string v13, "ic_achievement_close"

    invoke-static {v1, v13}, Lcom/tds/common/utils/UIUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    new-instance v13, Lcom/tds/achievement/ui/UIManager$1;

    invoke-direct {v13, v0}, Lcom/tds/achievement/ui/UIManager$1;-><init>(Lcom/tds/achievement/ui/UIManager;)V

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 103
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v11    # "dp44":I
    .end local v12    # "dp12":I
    .end local v14    # "imageViewLP":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    .end local v9    # "closeRootLP":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v9, Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {v9, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 107
    .local v9, "sheetRV":Ltds/androidx/recyclerview/widget/RecyclerView;
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 108
    invoke-virtual {v9, v15}, Ltds/androidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    .line 109
    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v6, v10}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v10

    .line 110
    .local v10, "dp10":I
    if-eqz v2, :cond_ed

    .line 111
    invoke-virtual {v9, v5, v10, v10, v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 112
    iget-object v11, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v11}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->dismiss()V

    goto :goto_f0

    .line 114
    :cond_ed
    invoke-virtual {v9, v10, v5, v10, v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 116
    :goto_f0
    invoke-virtual {v9, v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 117
    new-instance v11, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v12}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Ltds/androidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    if-eqz v2, :cond_105

    .line 122
    new-instance v11, Ltds/androidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v11, v1, v15, v5, v5}, Ltds/androidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    move-object v5, v11

    .local v5, "gridLayoutManager":Ltds/androidx/recyclerview/widget/GridLayoutManager;
    goto :goto_10a

    .line 124
    .end local v5    # "gridLayoutManager":Ltds/androidx/recyclerview/widget/GridLayoutManager;
    :cond_105
    new-instance v5, Ltds/androidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, v1, v15}, Ltds/androidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 126
    .restart local v5    # "gridLayoutManager":Ltds/androidx/recyclerview/widget/GridLayoutManager;
    :goto_10a
    new-instance v11, Lcom/tds/achievement/ui/UIManager$2;

    invoke-direct {v11, v0}, Lcom/tds/achievement/ui/UIManager$2;-><init>(Lcom/tds/achievement/ui/UIManager;)V

    invoke-virtual {v5, v11}, Ltds/androidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Ltds/androidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 141
    invoke-virtual {v9, v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->setLayoutManager(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 142
    new-instance v11, Lcom/tds/achievement/ui/ListAdapter;

    invoke-direct {v11, v2}, Lcom/tds/achievement/ui/ListAdapter;-><init>(Z)V

    iput-object v11, v0, Lcom/tds/achievement/ui/UIManager;->adapter:Lcom/tds/achievement/ui/ListAdapter;

    .line 143
    invoke-virtual {v9, v11}, Ltds/androidx/recyclerview/widget/RecyclerView;->setAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 144
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v11, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    const/4 v13, -0x1

    invoke-direct {v12, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v3, v12}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v11, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v11}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getBehavior()Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    move-result-object v11

    .line 150
    invoke-static/range {p1 .. p1}, Lcom/tds/common/utils/UIUtils;->getWindowLongLength(Landroid/app/Activity;)I

    move-result v12

    const/high16 v13, 0x42a00000    # 80.0f

    invoke-static {v6, v13}, Lcom/tds/common/utils/UIUtils;->dp2pxWithScale(FF)I

    move-result v6

    sub-int/2addr v12, v6

    .line 149
    invoke-virtual {v11, v12}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->setPeekHeight(I)V

    .line 151
    iget-object v6, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v6}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getBehavior()Lcom/tds/common/widgets/behavior/BottomSheetBehavior;

    move-result-object v6

    new-instance v11, Lcom/tds/achievement/ui/UIManager$3;

    invoke-direct {v11, v0, v8, v4}, Lcom/tds/achievement/ui/UIManager$3;-><init>(Lcom/tds/achievement/ui/UIManager;Landroid/widget/FrameLayout;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v6, v11}, Lcom/tds/common/widgets/behavior/BottomSheetBehavior;->addBottomSheetCallback(Lcom/tds/common/widgets/behavior/BottomSheetBehavior$BottomSheetCallback;)V

    .line 167
    .end local v5    # "gridLayoutManager":Ltds/androidx/recyclerview/widget/GridLayoutManager;
    .end local v9    # "sheetRV":Ltds/androidx/recyclerview/widget/RecyclerView;
    .end local v10    # "dp10":I
    invoke-direct/range {p0 .. p0}, Lcom/tds/achievement/ui/UIManager;->prepareData()V

    .line 168
    iget-object v5, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v5}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/common/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 169
    iget-object v5, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v5}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->show()V

    .line 170
    iget-object v5, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v5}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/common/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V

    .line 171
    iget-object v5, v0, Lcom/tds/achievement/ui/UIManager;->dialog:Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;

    invoke-virtual {v5}, Lcom/tds/common/widgets/slidesheet/SlideSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {v5}, Lcom/tds/common/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    .line 172
    return-void
.end method
