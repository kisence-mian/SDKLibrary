.class public Lcom/tapsdk/moment/LongClickHandler;
.super Ljava/lang/Object;
.source "LongClickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;
    }
.end annotation


# static fields
.field private static final SAVE_IMAGE:I = 0x1


# instance fields
.field private mCallback:Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

.field private mData:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;)V
    .registers 3
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tapsdk/moment/LongClickHandler;->mData:Lorg/json/JSONObject;

    .line 39
    iput-object p2, p0, Lcom/tapsdk/moment/LongClickHandler;->mCallback:Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/tapsdk/moment/LongClickHandler;)Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/LongClickHandler;

    .line 29
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler;->mCallback:Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tapsdk/moment/LongClickHandler;Landroid/app/Activity;)V
    .registers 2
    .param p0, "x0"    # Lcom/tapsdk/moment/LongClickHandler;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 29
    invoke-direct {p0, p1}, Lcom/tapsdk/moment/LongClickHandler;->notifyMediaRefresh(Landroid/app/Activity;)V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;)Lcom/tapsdk/moment/LongClickHandler;
    .registers 3
    .param p0, "data"    # Lorg/json/JSONObject;
    .param p1, "callback"    # Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;

    .line 43
    new-instance v0, Lcom/tapsdk/moment/LongClickHandler;

    invoke-direct {v0, p0, p1}, Lcom/tapsdk/moment/LongClickHandler;-><init>(Lorg/json/JSONObject;Lcom/tapsdk/moment/LongClickHandler$ClickEventLifecycleCallback;)V

    return-object v0
.end method

.method private notifyMediaRefresh(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 81
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler;->mData:Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tapsdk/moment/LongClickHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/tapsdk/moment/LongClickHandler$2;-><init>(Lcom/tapsdk/moment/LongClickHandler;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/tapsdk/moment/image/NetSaveImageHelper;->download(Ljava/lang/String;Lcom/tapsdk/moment/image/SaveImageCallback;)V

    .line 105
    return-void
.end method


# virtual methods
.method public handler(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 47
    iget-object v0, p0, Lcom/tapsdk/moment/LongClickHandler;->mData:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 48
    return-void

    .line 50
    :cond_5
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 51
    invoke-virtual {p0, p1}, Lcom/tapsdk/moment/LongClickHandler;->saveImageToMedia(Landroid/app/Activity;)V

    .line 53
    :cond_11
    return-void
.end method

.method public saveImageToMedia(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 56
    new-instance v0, Lcom/tapsdk/moment/LongClickHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/tapsdk/moment/LongClickHandler$1;-><init>(Lcom/tapsdk/moment/LongClickHandler;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 77
    const-string v2, "save_image"

    invoke-static {v2}, Lcom/tapsdk/moment/Utils;->getTranslatedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 56
    invoke-static {v0, v1}, Lcom/tapsdk/moment/view/BottomSheet;->newInstance(Lcom/tapsdk/moment/view/BottomSheet$OnItemClickListener;[Ljava/lang/String;)Lcom/tapsdk/moment/view/BottomSheet;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/tapsdk/moment/view/BottomSheet;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapsdk/moment/view/BottomSheet;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    return-void
.end method
