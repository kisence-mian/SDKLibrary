.class public Lcom/tds/common/tracker/model/ActionModel;
.super Ljava/lang/Object;
.source "ActionModel.java"

# interfaces
.implements Lcom/tds/common/tracker/model/BaseTrackModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/tracker/model/ActionModel$Type;
    }
.end annotation


# static fields
.field public static final ACTION_CLICK:I = 0x0

.field public static final ACTION_COLLECT:I = 0x3

.field public static final ACTION_COMMENT:I = 0x2

.field public static final ACTION_IMPRESSION:I = 0x4

.field public static final ACTION_LIKE:I = 0x1

.field public static final PARAM_NAME_CLICK:Ljava/lang/String; = "click"

.field public static final PARAM_NAME_COLLECT:Ljava/lang/String; = "collect"

.field public static final PARAM_NAME_COMMENT:Ljava/lang/String; = "comment"

.field public static final PARAM_NAME_IMPRESSION:Ljava/lang/String; = "impression"

.field public static final PARAM_NAME_LIKE:Ljava/lang/String; = "like"


# instance fields
.field private actionType:I

.field private targetViewName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/tds/common/tracker/model/ActionModel;->actionType:I

    return-void
.end method


# virtual methods
.method public clickWithViewName(Ljava/lang/String;)Lcom/tds/common/tracker/model/ActionModel;
    .registers 3
    .param p1, "viewName"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/tds/common/tracker/model/ActionModel;->actionType:I

    .line 47
    return-object p0
.end method

.method public collectWithViewName(Ljava/lang/String;)Lcom/tds/common/tracker/model/ActionModel;
    .registers 3
    .param p1, "viewName"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/tds/common/tracker/model/ActionModel;->actionType:I

    .line 65
    return-object p0
.end method

.method public commentWithViewName(Ljava/lang/String;)Lcom/tds/common/tracker/model/ActionModel;
    .registers 3
    .param p1, "viewName"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/tds/common/tracker/model/ActionModel;->actionType:I

    .line 59
    return-object p0
.end method

.method public convert()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "actionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    .line 78
    .local v1, "key":Ljava/lang/String;
    iget v2, p0, Lcom/tds/common/tracker/model/ActionModel;->actionType:I

    packed-switch v2, :pswitch_data_30

    goto :goto_1c

    .line 92
    :pswitch_d
    const-string v1, "impression"

    .line 93
    goto :goto_1c

    .line 89
    :pswitch_10
    const-string v1, "collect"

    .line 90
    goto :goto_1c

    .line 86
    :pswitch_13
    const-string v1, "comment"

    .line 87
    goto :goto_1c

    .line 83
    :pswitch_16
    const-string v1, "like"

    .line 84
    goto :goto_1c

    .line 80
    :pswitch_19
    const-string v1, "click"

    .line 81
    nop

    .line 97
    :goto_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 98
    iget-object v2, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2f
    return-object v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public impressionWithViewName(Ljava/lang/String;)Lcom/tds/common/tracker/model/ActionModel;
    .registers 3
    .param p1, "viewName"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/tds/common/tracker/model/ActionModel;->actionType:I

    .line 71
    return-object p0
.end method

.method public likeWithViewName(Ljava/lang/String;)Lcom/tds/common/tracker/model/ActionModel;
    .registers 3
    .param p1, "viewName"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/tds/common/tracker/model/ActionModel;->targetViewName:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/tds/common/tracker/model/ActionModel;->actionType:I

    .line 53
    return-object p0
.end method
